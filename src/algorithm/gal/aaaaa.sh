CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 0.1 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_0.1.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 0.1 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_0.1.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 1.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_1.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 1.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_1.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 0.6 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_0.6.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 0.6 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_0.6.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 0.6 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_0.6.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 0.6 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_0.6.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 0.1 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_0.1.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 1.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_1.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 0.1 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_0.1.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 0.6 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_0.6.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 1.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_1.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 1.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_1.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 0.1 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_0.1.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 1.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_1.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 1.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_1.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 1.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_1.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 1.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_1.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 100.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_100.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 1.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_1.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 0.6 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_0.6.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 0.6 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_0.6.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 0.3 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_0.3.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 0.3 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_0.3.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 0.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_0.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 100.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_100.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 0.3 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_0.3.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 1.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_1.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 0.6 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_0.6.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 100.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_100.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 100.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_100.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 0.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_0.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 100.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_100.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 100.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_100.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 100.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_100.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 0.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_0.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 100.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_100.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 0.6 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_0.6.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 1.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_1.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 1.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_1.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 0.1 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_0.1.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 0.1 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_0.1.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 1.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_1.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 0.1 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_0.1.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 10.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_10.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 10.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_10.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 1.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_1.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 0.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_0.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 0.3 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_0.3.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 0.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_0.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 0.3 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_0.3.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 0.3 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_0.3.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 1.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_1.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 1.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_1.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 1.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_1.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 1.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_1.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 0.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_0.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 0.3 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_0.3.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 1.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_1.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 0.3 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_0.3.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter corr --weight 0.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/corr_0.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 100.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_100.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter corr --weight 0.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/corr_0.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 0.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_0.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter corr --weight 0.3 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/corr_0.3.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 0.3 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_0.3.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=2 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter corr --weight 0.6 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/corr_0.6.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 100.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_100.0.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=3 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 10.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_10.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter corr --weight 0.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/corr_0.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 0 --splitter imp --weight 10.0 --dataseed 0 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed0_local20_global200_bs512/imp_10.0.log_final_repeat0.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 10.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_10.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 1 --splitter imp --weight 10.0 --dataseed 1 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed1_local20_global200_bs512/imp_10.0.log_final_repeat1.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 10.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_10.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 2 --splitter imp --weight 10.0 --dataseed 2 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed2_local20_global200_bs512/imp_10.0.log_final_repeat2.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 10.0 --dataseed 3 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_10.0.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=0 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 3 --splitter imp --weight 0.1 --dataseed 3 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed3_local20_global200_bs512/imp_0.1.log_final_repeat3.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name MNIST_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 0.1 --dataseed 4 > ./results_test2023-08-12_21-43-49/MNIST_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_0.1.log_final_repeat4.txt 2>&1
CUDA_VISIBLE_DEVICES=1 BATCH_SIZE=512 LR=0.01 python train_model_assist.py --data_name CIFAR10_VB --model_name classifier --control_name 4_stack_20_200_search_0 --init_seed 4 --splitter imp --weight 10.0 --dataseed 4 > ./results_test2023-08-12_21-43-49/CIFAR10_VB_client4_lr0.01_seed4_local20_global200_bs512/imp_10.0.log_final_repeat4.txt 2>&1
