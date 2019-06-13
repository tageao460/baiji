FROM registry.cn-shanghai.aliyuncs.com/aliseccompetition/tensorflow1.1.0-devel-gpu
ADD . /competition
WDRKDIR /competition

ENTRYPOINT ["run.sh"]
