#!/usr/bin/env bash

set -eu

# we need gcc for some C++ libraries that Z3 depends on;
# this marks it manually installed
apt-get install -y gcc
apt-get remove -y g++ git cmake
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/*
# make sure z3 still works
python3 -c 'import ivy.z3'
rm -rf ivy
rm set-locale.sh install.sh uninstall.sh
