FROM ubuntu:focal

RUN apt-get update -y \
    && add-apt-repository multiverse -y \
    && dpkg --add-architecture i386 -y \

