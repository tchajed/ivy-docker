#!/usr/bin/env bash

set -eu

apt-get install -y python python3 python3-pip g++ cmake \
  python3-ply python3-pygraphviz python3-tk \
  git pkg-config libssl-dev libreadline-dev
pip3 install pyparsing pexpect

git clone --recurse-submodules https://github.com/kenmcmil/ivy.git
cd ivy
sed -i "s/make -j 4/make -j8/" build_submodules.py
sed -i "s/'make'/'make -j8'/" build_submodules.py
sed -i "s/&& make/\\0 -j8/" build_submodules.py
python3 build_submodules.py
python3 setup.py install
