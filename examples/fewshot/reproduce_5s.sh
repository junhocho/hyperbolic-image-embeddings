# FIVE SHOT FIVE WAY

# CUB 5s5w (conv4) 0.8253 +- 0.0014

# best epoch 195, best val acc=0.8469
# epoch 200, val, loss=0.4291 acc=0.8446
# ETA:3.1h/3.1h
# ...
# Val Best Acc 0.8469, Test Acc 0.8002
# Test Acc 0.8002 + 0.0016


CUDA_VISIBLE_DEVICES=1 python train_protonet.py \
  --dataset CUB \
  --shot 5 \
  --lr 0.001 \
  --step 40 \
  --gamma 0.8 \
  --c 0.01 \
  --model convnet \
  --hyperbolic \
  --not-riemannian \
  --dim 1600

# MiniImageNet 5s5w (conv4)  0.7269 +- 0.0014
## JH REPRRODUCED
# best epoch 191, best val acc=0.7287
# epoch 200, val, loss=0.7385 acc=0.7187
# ETA:3.9h/3.9h
# ...
# Val Best Acc 0.7287, Test Acc 0.7233
# Test Acc 0.7233 + 0.0016
CUDA_VISIBLE_DEVICES=1 python train_protonet.py \
  --dataset MiniImageNet \
  --way 20 \
  --shot 5 \
  --lr 0.005 \
  --step 60 \
  --gamma 0.8 \
  --c 0.005 \
  --model convnet \
  --hyperbolic \
  --not-riemannian \
  --dim 1600

# MiniImageNet 5s5w (resnet18) 0.7684 +/- 0.0014  ### OOM
CUDA_VISIBLE_DEVICES=1 python train_protonet.py \
  --dataset MiniImageNet \
  --way 20 \
  --shot 5 \
  --lr 0.001 \
  --step 40 \
  --gamma 0.5 \
  --c 0.005 \
  --model resnet18 \
  --hyperbolic \
  --not-riemannian \
  --dim 512

# MiniImageNet 5s5w (resnet12) 0.7819 +- 0.0014   ### OOM
CUDA_VISIBLE_DEVICES=1 python train_protonet.py \
  --dataset MiniImageNet \
  --way 20 \
  --shot 5 \
  --lr 0.005 \
  --step 50 \
  --gamma 0.8 \
  --c 0.005 \
  --model resnet12 \
  --hyperbolic \
  --not-riemannian \
  --dim 512



