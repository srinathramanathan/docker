FROM ubuntu:16.04
MAINTAINER "srinathramanathan@gmail.com" else LABLE maintainer="srinathramanathan@gmail.com"
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y git
