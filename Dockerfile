# syntax=docker/dockerfile:1
FROM ubuntu:18.04

COPY install.sh .
RUN bash install.sh

COPY uninstall.sh .
RUN bash uninstall.sh

ENTRYPOINT ["/usr/local/bin/ivy_check"]
