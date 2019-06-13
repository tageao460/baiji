FROM registry.cn-shanghai.aliyuncs.com/aliseccompetition/tensorflow:1.1.0-devel-gpu
ADD . /competition
WORKDIR /competition

ENTRYPOINT ["run.sh"]
