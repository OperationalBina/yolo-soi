#!/bin/bash
set -ex

# Base builds
docker build -t soi:1.0-yolov3_coco \
	--build-arg weights_file="yolov3.weights" \
	--build-arg config_file="data/yolov3.cfg" \
	--build-arg meta_file="data/coco.data" \
       	.

#docker build -t soi:1.0-yolov4_coco \
#	--build-arg weights_file="yolov4.weights" \
#	--build-arg config_file="data/yolov4.cfg" \
#	--build-arg meta_file="data/coco.data" \
#	--build-arg download_url="https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/" \
#	.

# CUDA builds
#docker build -t soi:1.0_cuda10.0-yolov3_coco \
#	--build-arg weights_file="yolov3.weights" \
#	--build-arg config_file="data/yolov3.cfg" \
#	--build-arg meta_file="data/coco.data" \
#	--build-arg build_image="nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04" \
#	--build-arg app_image="nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04" \
#	--build-arg cuda=1 \
#       	.

#docker build -t soi:1.0_cuda10.0-yolov4_coco \
#	--build-arg weights_file="yolov4.weights" \
#	--build-arg config_file="data/yolov4.cfg" \
#	--build-arg meta_file="data/coco.data" \
#	--build-arg download_url="https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/" \
#	--build-arg build_image="nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04" \
#	--build-arg app_image="nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04" \
#	--build-arg cuda=1 \
#	.

# CUDA with Tensor Cores build
#docker build -t soi:1.0_cuda10.0_tc-yolov3_coco \
#	--build-arg weights_file="yolov3.weights" \
#	--build-arg config_file="data/yolov3.cfg" \
#	--build-arg meta_file="data/coco.data" \
#	--build-arg build_image="nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04" \
#	--build-arg app_image="nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04" \
#	--build-arg cuda=1 \
#	--build-arg cuda_tc=1 \
#       	.

#docker build -t soi:1.0_cuda10.0_tc-yolov4_coco \
#	--build-arg weights_file="yolov4.weights" \
#	--build-arg config_file="data/yolov4.cfg" \
#	--build-arg meta_file="data/coco.data" \
#	--build-arg download_url="https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/" \
#	--build-arg build_image="nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04" \
#	--build-arg app_image="nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04" \
#	--build-arg cuda=1 \
#	--build-arg cuda_tc=1 \
#	.
