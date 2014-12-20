FROM ubuntu:14.04
MAINTAINER Manfred Touron <m@42.am> (@moul)


RUN echo "deb http://archive.ubuntu.com/ubuntu trusty multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y -q upgrade
RUN dpkg --add-architecture i386 && apt-get update
RUN apt-get -y -q install \
  gcc cpp gcc-multilib g++ g++-4.8-multilib g++-4.8 \
  gcc-4.8-multilib cpp-4.8 gcc-4.8 \
  openjdk-7-jdk git gnupg flex bison gperf build-essential \
  zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386
