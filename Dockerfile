# Dockerfile of Example
# Version 1.0
# Base Images
FROM registry.cn-shanghai.aliyuncs.com/aliseccompetition/tensorflow:1.1.0-devel-gpu
#MAINTAINER
MAINTAINER AlibabaSec

ADD . /competition

WORKDIR /competition
RUN pip --no-cache-dir install  -r requirements.txt
# INSTALL cleverhans foolbox


RUN curl -O  https://media.githubusercontent.com/media/tageao460/baiji/liyang/vgg_16/vgg_16.ckpt.data-00000-of-00001