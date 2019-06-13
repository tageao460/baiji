FROM ubuntu
ADD . /competition
WORKDIR /competition

ENTRYPOINT ["run.sh"]
