import argparse
import os
import sys
import pathlib
import warnings

from numba.core.errors import NumbaDeprecationWarning, NumbaPendingDeprecationWarning
warnings.simplefilter('ignore', category=NumbaDeprecationWarning)
warnings.simplefilter('ignore', category=NumbaPendingDeprecationWarning)

sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

from dataset.LocalDataset import LocalDataset

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("path", type=str, nargs='+', help="Path to the pickle file(s)")
    parser.add_argument("--type", "-t", type=str, default="fedtree",
                        help="Type of csv file. Should be in ['fedtree', 'raw']. If 'raw', the csv will be raw data "
                             "without title and index.")
    parser.add_argument("--scale-y", "-sy", action='store_true', default=False, help="Scale the y values to [0, 1]")
    parser.add_argument("--drop-y", "-dy", action='store_true', default=False, help="Drop the y values")
    parser.add_argument("--shift-y", "-shy", default=0, type=int, help="Shift the y values by a constant")
    args = parser.parse_args()

    for path in args.path:
        if not os.path.exists(path):
            raise FileNotFoundError(f"File {path} not found")
        if pathlib.Path(path).suffix != '.pkl':
            warnings.warn(f"File {args.path} may not be a pickle file. Skipped.")
            continue

        dataset = LocalDataset.from_pickle(path)
        if args.scale_y:
            dataset.scale_y_()
        if args.drop_y:
            dataset.y = None
        if args.shift_y != 0:
            dataset.y += args.shift_y
        csv_path = pathlib.Path(path).with_suffix('.csv')
        dataset.to_csv(csv_path, type=args.type)
        print(f"Saved to {csv_path}.")

