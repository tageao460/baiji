FROM ubuntu
ADD . /competition
WDRKDIR /competition

ENTRYPOINT ["run.sh"]
