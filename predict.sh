#/bin/bash

TEST_DATA_ROOT=./aaa

CUDA_VISIBLE_DEVICES=0 \
python core/deploy.py \
    --imgDir=$TEST_DATA_ROOT/image \
    --trimapDir=$TEST_DATA_ROOT/trimap \
    --alphaDir=$TEST_DATA_ROOT/alpha \
    --saveDir=$TEST_DATA_ROOT/tmp \
    --resume=model/stage1_sad_54.4.pth \
    --cuda \
    --stage=1 \
    --crop_or_resize=whole \
    --max_size=1600
