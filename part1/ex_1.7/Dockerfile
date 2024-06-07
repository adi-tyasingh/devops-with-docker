FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY script.sh . 

RUN apt-get -y update 

RUN apt install -y curl 

CMD ./script.sh