# syntax=docker/dockerfile:1
FROM ubuntu:18.04

COPY set-locale.sh .
RUN bash set-locale.sh

ENV LANG=en_US.UTF-8 \
         LANGUAGE=en_US \
         LC_ALL=en_US.UTF-8
RUN locale-gen

COPY install.sh .
RUN bash install.sh

COPY uninstall.sh .
RUN bash uninstall.sh

ENTRYPOINT ["/usr/local/bin/ivy_check"]
