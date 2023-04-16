import abc
from typing import Protocol
import pickle
import os.path

import numpy
import pandas
import pandas as pd

import torch
from torch.utils.data import Dataset

from .LocalDataset import LocalDataset
from utils import party_path


class VFLDataset:
    """
    Base class for vertical federated learning (VFL) datasets. The __len__ and __getitem__ methods are
    undefined because the length of local datasets and the way to get items might be different. They should be
    defined in the subclass.
    """

    def __init__(self, num_parties: int, local_datasets: list, primary_party_id: int = 0):
        """
        :param num_parties: number of parties
        :param local_datasets: local datasets of each party (list of LocalDataset)
        :param primary_party_id: primary party (the party with labels) id, should be in range of [0, num_parties)
        """

        self.num_parties = num_parties
        self.local_datasets = local_datasets
        self.primary_party_id = primary_party_id

        self.check_param()

    def check_param(self):
        """
        Check if the data is valid
        """
        assert len(self.local_datasets) == self.num_parties, "The number of parties should be the same as the " \
                                                                 "number of local datasets "
        for local_dataset in self.local_datasets:
            assert isinstance(local_dataset, LocalDataset), "local_dataset should be an instance of LocalDataset"

        assert 0 <= self.primary_party_id < self.num_parties, "primary_party_id should be in range of [0, num_parties)"


class VFLRawDataset(VFLDataset, abc.ABC):
    """
    Linkable VFL dataset where the keys of local datasets are the same. It does not define the __len__ and
    __getitem__ methods, thus it cannot be directly used in torch.utils.data.DataLoader to train models.
    """
    def __init__(self, num_parties: int, local_datasets: list, primary_party_id: int = 0):
        """
        :param num_parties: number of parties
        :param local_datasets: (list) local datasets of each party, each element is a LocalDataset
        :param primary_party_id: primary party (the party with labels) id, should be in range of [0, num_parties)
        """
        super().__init__(num_parties, local_datasets, primary_party_id)
        self.check_key()

    def check_key(self):
        """
        Check if the keys of local datasets are the same
        """
        key = self.local_datasets[0].key
        for local_dataset in self.local_datasets:
            assert key.shape[1] == local_dataset.key.shape[1], "The number of columns of keys should be the same"

    @abc.abstractmethod
    def link(self, *args, **kwargs):
        """
        Link the local datasets
        :return: VFLAlignedDataset, a linked VFL dataset
        """
        pass


class VFLAlignedDataset(VFLDataset, Dataset):
    """
    Trainable VFL dataset where the number of samples in local datasets is the same. It defines the __len__ and
    __getitem__ methods, thus it can be directly used in torch.utils.data.DataLoader to train models.
    """
    def __init__(self, num_parties: int, local_datasets, primary_party_id: int = 0):
        """
        :param num_parties: number of parties
        :param local_datasets: (ndarray) local datasets of each party, each element is a LocalDataset. Note that
                                this CANNOT be changed to a list because a PyTorch multiprocessing issue (see
                                https://github.com/pytorch/pytorch/issues/13246)
        :param primary_party_id: primary party (the party with labels) id, should be in range of [0, num_parties)
        """
        super().__init__(num_parties, local_datasets, primary_party_id)

    def check_shape(self):
        """
        Check if the shape of local datasets is aligned
        """
        assert self.local_datasets[self.primary_party_id].y is not None, f"The primary party {self.primary_party_id} does not have labels"
        for local_dataset in self.local_datasets:
            assert len(local_dataset) == len(self.local_datasets[self.primary_party_id]), \
                "The number of samples in local datasets should be the same"

    def __len__(self):
        return len(self.local_datasets[self.primary_party_id])

    def __getitem__(self, idx):
        """
        Invoke __getitem__ of each local dataset to get the item
        :param idx: the index of the item
        :return: a tuple of tensors. The last tensor is a tensor of y. The rest tensors are tensors of X.
        """
        Xs = []
        for local_dataset in self.local_datasets:
            _, X, _ = local_dataset[idx]        # key is omitted because it is not used in training
            Xs.append(X)
        _, _, y = self.local_datasets[self.primary_party_id][idx]

        return Xs, y

    @classmethod
    def from_pickle(cls, dir: str, dataset: str, n_parties, primary_party_id: int = 0,
                    splitter: str = 'imp', weight: float = 1, beta: float = 1, seed: int = 0, type='train'):
        """
        Load a VFLAlignedDataset from pickle file. The pickle files are local datasets of each party.

        Parameters
        ----------
        dir : str
            The directory of pickle files.
        dataset : str
            The name of the dataset.
        n_parties : int
            The number of parties.
        primary_party_id : int, optional
            The primary party id, by default 0
        splitter : str, optional
            The splitter used to split the dataset, by default 'imp'
        weight : float, optional
            The weight of the primary party, by default 1
        beta : float, optional
            The beta of the primary party, by default 1
        seed : int, optional
            The seed of the primary party, by default 0
        type : str, optional
            The type of the dataset, by default 'train'. It should be ['train', 'test'].
        """
        assert type in ['train', 'test'], "type should be 'train' or 'test'"
        local_datasets = []
        for party_id in range(n_parties):
            path_in_dir = party_path(dataset_path=dataset, n_parties=n_parties, party_id=party_id,
                                     splitter=splitter, weight=weight, beta=beta, seed=seed, type=type, fmt='pkl')
            path = os.path.join(dir, path_in_dir)
            if not os.path.exists(path):
                raise FileNotFoundError(f"File {path} does not exist")
            local_dataset = LocalDataset.from_pickle(path)
            if party_id != primary_party_id:    # remove y of secondary parties
                local_dataset.y = None
            local_datasets.append(local_dataset)
        return cls(n_parties, local_datasets, primary_party_id)

    @property
    def local_input_channels(self):
        return [local_dataset.X.shape[1] for local_dataset in self.local_datasets]


