# syntax=docker/dockerfile:1
FROM ubuntu:22.04

COPY set-locale.sh .
RUN bash set-locale.sh

ENV LANG=en_US.UTF-8 \
         LANGUAGE=en_US \
         LC_ALL=en_US.UTF-8

COPY install.sh .
COPY uninstall.sh .
RUN ./install.sh

#COPY uninstall.sh .
#RUN bash uninstall.sh

ENTRYPOINT ["/usr/local/bin/ivy_check"]
