#!/bin/bash
# Where the pre-trained InceptionV3 checkpoint is saved to.
PRETRAINED_CHECKPOINT_DIR=/world/data-gpu-94/sysu-reid/checkpoints
# Where the training (fine-tuned) checkpoint and logs will be saved to.
TRAIN_DIR=/world/data-gpu-94/sysu-reid/checkpoints/Market_inception_320_160
# Where the dataset is saved to.
DATASET_DIR=/world/data-gpu-94/sysu-reid/zhangkaicheng/Market-1501-tfrecord
# WHere the log is saved to
LOG_DIR=/home/yuanziyi/log
# Wher the tfrecord file is save to
PROBE_OUTPUT_DIR=/world/data-gpu-94/sysu-reid/zhangkaicheng/Market-1501-tfrecord/query
# Wher the tfrecord file is save to
GALLERY_OUTPUT_DIR=/world/data-gpu-94/sysu-reid/zhangkaicheng/Market-1501-tfrecord/bounding_box_test
python get_features_single.py \
--dataset_name=Market_1501 \
--probe_dataset_dir=${PROBE_OUTPUT_DIR} \
--gallery_dataset_dir=${GALLERY_OUTPUT_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=10001 \
--checkpoint_dir=${TRAIN_DIR} \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--log_dir=${LOG_DIR} \
--optimizer=sgd \
--weight_decay=0.00004 \
--ckpt_num=47827 \

python get_features_single.py \
--dataset_name=Market_1501 \
--probe_dataset_dir=${PROBE_OUTPUT_DIR} \
--gallery_dataset_dir=${GALLERY_OUTPUT_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=10001 \
--checkpoint_dir=${TRAIN_DIR} \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--log_dir=${LOG_DIR} \
--optimizer=sgd \
--weight_decay=0.00004 \
--ckpt_num=50808 \

python get_features_single.py \
--dataset_name=Market_1501 \
--probe_dataset_dir=${PROBE_OUTPUT_DIR} \
--gallery_dataset_dir=${GALLERY_OUTPUT_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=10001 \
--checkpoint_dir=${TRAIN_DIR} \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--log_dir=${LOG_DIR} \
--optimizer=sgd \
--weight_decay=0.00004 \
--ckpt_num=53806 \

python get_features_single.py \
--dataset_name=Market_1501 \
--probe_dataset_dir=${PROBE_OUTPUT_DIR} \
--gallery_dataset_dir=${GALLERY_OUTPUT_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=10001 \
--checkpoint_dir=${TRAIN_DIR} \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--log_dir=${LOG_DIR} \
--optimizer=sgd \
--weight_decay=0.00004 \
--ckpt_num=56793 \

python get_features_single.py \
--dataset_name=Market_1501 \
--probe_dataset_dir=${PROBE_OUTPUT_DIR} \
--gallery_dataset_dir=${GALLERY_OUTPUT_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=10001 \
--checkpoint_dir=${TRAIN_DIR} \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--log_dir=${LOG_DIR} \
--optimizer=sgd \
--weight_decay=0.00004 \
--ckpt_num=59766 \
