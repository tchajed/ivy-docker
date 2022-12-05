#!/usr/bin/env bash

set -eu

apt-get update -y
apt install -yq tzdata
apt-get install -y python python-pip g++ cmake python-ply python-pygraphviz git python-tk tix pkg-config libssl-dev libreadline-dev
pip install pyparsing==2.1.4 pexpect

git clone --recurse-submodules https://github.com/kenmcmil/ivy.git
cd ivy
python build_submodules.py
python setup.py install
