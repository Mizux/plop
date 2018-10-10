FROM ubuntu:latest
LABEL maintainer="mizux.dev@gmail.com"

# Base install
RUN apt-get update -qq && \
apt-get install -qq cmake build-essential && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY cache/ubuntu/install /
