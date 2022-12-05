# syntax=docker/dockerfile:1
FROM ubuntu:18.04

COPY install.sh .
RUN ./install.sh

COPY uninstall.sh .
RUN ./uninstall.sh

ENTRYPOINT ["/usr/local/bin/ivy_check"]
