# ONE SHOT FIVE WAY

# CUB 1s5w (conv4) 0.6402 +- 0.002

# best epoch 190, best val acc=0.6803
# epoch 200, val, loss=0.8386 acc=0.6785
# ETA:2.5h/2.5h
# ...
# Val Best Acc 0.6803, Test Acc 0.6181
# Test Acc 0.6181 + 0.0024
python train_protonet.py \
  --dataset CUB \
  --shot 1 \
  --lr 0.001 \
  --step 50 \
  --gamma 0.8 \
  --c 0.05 \
  --model convnet \
  --hyperbolic \
  --not-riemannian \
  --dim 1600

# MiniImageNet 1s5w (conv4)  0.5443 +- 0.002
# est epoch 169, best val acc=0.5345
# epoch 200, val, loss=1.1889 acc=0.5181
# ETA:4.0h/4.0h
# ...
# Val Best Acc 0.5345, Test Acc 0.5266
# Test Acc 0.5266 + 0.0020

python train_protonet.py \
  --dataset MiniImageNet \
  --way 30 \
  --shot 1 \
  --lr 0.005 \
  --step 80 \
  --gamma 0.5 \
  --c 0.01 \
  --model convnet \
  --hyperbolic \
  --not-riemannian \
  --dim 1600

# MiniImageNet 1s5w (resnet18) 0.5947 +/- 0.002  ## OOM
python train_protonet.py \
  --dataset MiniImageNet \
  --way 30 \
  --shot 1 \
  --lr 0.001 \
  --step 80 \
  --gamma 0.5 \
  --c 0.01 \
  --model resnet18 \
  --hyperbolic \
  --not-riemannian \
  --dim 512

# MiniImageNet 1s5w (resnet12) 0.6160 +- 0.002 ## OOM
python train_protonet.py \
  --dataset MiniImageNet \
  --way 30 \
  --shot 1 \
  --lr 0.001 \
  --step 40 \
  --gamma 0.8 \
  --c 0.01 \
  --model resnet12 \
  --hyperbolic \
  --not-riemannian \
  --dim 512
