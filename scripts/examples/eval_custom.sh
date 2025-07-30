#!/bin/bash

save_dir="eval_results/"
global_record_file="eval_results/eval_record_collection.csv"
model="qwen/qwen3-0.6B"
selected_subjects="all"
gpu_util=0.9

cd ../../
export CUDA_VISIBLE_DEVICES=0,1

python evaluate_from_local.py \
                 --selected_subjects $selected_subjects \
                 --save_dir $save_dir \
                 --model $model \
                 --global_record_file $global_record_file \
                 --gpu_util $gpu_util
