#!/bin/bash
# Where the pre-trained InceptionV3 checkpoint is saved to.
PRETRAINED_CHECKPOINT_DIR=/home/yuanziyi/checkpoints
# Where the training (fine-tuned) checkpoint and logs will be saved to.
CKPT_SAVE_DIR=/world/data-gpu-94/sysu-reid/checkpoints/Duke_inception_multi
# WHere the log is saved to
LOG_DIR=/world/data-gpu-94/sysu-reid/zhangkaicheng/log
# Wher the tfrecord file is save to
DATASET_DIR=/world/data-gpu-94/sysu-reid/person-reid-data/DukeMTMC-reID-tfrecord/bounding_box_train

# python train_multiscale.py \
# --learning_rate=2e-4 \
# --learning_rate_decay_type=fixed \
# --dataset_dir=${DATASET_DIR} \
# --model_name=inception_v3 \
# --batch_size=8 \
# --max_number_of_steps=20000 \
# --checkpoint_dir=${CKPT_SAVE_DIR} \
# --log_dir=${LOG_DIR} \
# --save_model_summary_secs=360 \
# --log_every_n_steps=100 \
# --optimizer=adam \
# --adam_beta1=0.5 \
# --adam_beta2=0.999 \
# --weight_decay=0.00004 \
# --GPU_use=6 \
# --pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
# --pretrain_branch_0_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_299/model.ckpt-49618 \
# --pretrain_branch_1_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_225/model.ckpt-58714

python train_multiscale.py \
--learning_rate=5e-5 \
--learning_rate_decay_type=fixed \
--dataset_dir=${DATASET_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=40000 \
--checkpoint_dir=${CKPT_SAVE_DIR} \
--log_dir=${LOG_DIR} \
--save_model_summary_secs=360 \
--log_every_n_steps=100 \
--optimizer=adam \
--adam_beta1=0.5 \
--adam_beta2=0.999 \
--weight_decay=0.00004 \
--GPU_use=5 \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--pretrain_branch_0_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_299/model.ckpt-49618 \
--pretrain_branch_1_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_225/model.ckpt-58714

python train_multiscale.py \
--learning_rate=1e-5 \
--learning_rate_decay_type=fixed \
--dataset_dir=${DATASET_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=60000 \
--checkpoint_dir=${CKPT_SAVE_DIR} \
--log_dir=${LOG_DIR} \
--save_model_summary_secs=360 \
--log_every_n_steps=100 \
--optimizer=adam \
--adam_beta1=0.5 \
--adam_beta2=0.999 \
--weight_decay=0.00004 \
--GPU_use=5 \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--pretrain_branch_0_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_299/model.ckpt-49618 \
--pretrain_branch_1_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_225/model.ckpt-58714

python train_multiscale.py \
--learning_rate=5e-6 \
--learning_rate_decay_type=fixed \
--dataset_dir=${DATASET_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=80000 \
--checkpoint_dir=${CKPT_SAVE_DIR} \
--log_dir=${LOG_DIR} \
--save_model_summary_secs=360 \
--log_every_n_steps=100 \
--optimizer=adam \
--adam_beta1=0.5 \
--adam_beta2=0.999 \
--weight_decay=0.00004 \
--GPU_use=5 \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--pretrain_branch_0_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_299/model.ckpt-49618 \
--pretrain_branch_1_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_225/model.ckpt-58714

python train_multiscale.py \
--learning_rate=1e-6 \
--learning_rate_decay_type=fixed \
--dataset_dir=${DATASET_DIR} \
--model_name=inception_v3 \
--batch_size=8 \
--max_number_of_steps=100000 \
--checkpoint_dir=${CKPT_SAVE_DIR} \
--log_dir=${LOG_DIR} \
--save_model_summary_secs=360 \
--log_every_n_steps=100 \
--optimizer=adam \
--adam_beta1=0.5 \
--adam_beta2=0.999 \
--weight_decay=0.00004 \
--GPU_use=5 \
--pretrain_path=${PRETRAINED_CHECKPOINT_DIR}/inception_v3.ckpt \
--pretrain_branch_0_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_299/model.ckpt-49618 \
--pretrain_branch_1_path=${PRETRAINED_CHECKPOINT_DIR}/Duke_inception_225/model.ckpt-58714
