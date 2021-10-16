FROM ubuntu:latest

ARG workdir

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    wget \
    default-jdk
RUN wget -O perftest.tar.gz https://github.com/rabbitmq/rabbitmq-perf-test/releases/download/v2.16.0/rabbitmq-perf-test-2.16.0-bin.tar.gz
RUN mv perftest.tar.gz /usr/bin
COPY ./perftest /usr/local/bin
WORKDIR /usr/bin
RUN tar -xzf perftest.tar.gz 
WORKDIR $workdir
