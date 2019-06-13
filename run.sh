#!/bin/bash
#
# run.sh is the entry point of the submission.
# nvidia-docker run -v ${INPUT_DIR}:/input_images -v ${OUTPUT_DIR}:/output_images
#       -w /competition ${DOCKER_IMAGE_NAME} sh ./run.sh /input_images /output_images
# where:
#   INPUT_DIR - directory with input png images
#   OUTPUT_DIR - directory with output png images
#

INPUT_DIR=$1
OUTPUT_DIR=$2
TMP_OUTPUT_DIR_1=tmp_output.1
TMP_OUTPUT_DIR_2=tmp_output.2

mkdir -p $TMP_OUTPUT_DIR_1
mkdir -p $TMP_OUTPUT_DIR_2

python attack.py \
  --input_dir="${INPUT_DIR}" \
  --output_dir="${TMP_OUTPUT_DIR_1}" \
  --checkpoint_path=./models/inception_v1/inception_v1.ckpt

python angran_attack.py \
  --input_dir="${TMP_OUTPUT_DIR_1}" \
  --output_dir="${OUTPUT_DIR}" \
  --checkpoint_path=./models/inception_v1/inception_v1.ckpt

#python attack.py \
#  --input_dir="${TMP_OUTPUT_DIR_2}" \
#  --output_dir="${OUTPUT_DIR}" \
#  --checkpoint_path=./models/inception_v1/inception_v1.ckpt

