FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install nasm build-essential gdb -y && \
    apt-get install sudo less vim -y

VOLUME ["/mnt"]
WORKDIR /mnt
