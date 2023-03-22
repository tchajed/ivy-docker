#!/usr/bin/env bash

set -eu

apt-get install -y python python-pip g++ cmake python-ply python-pygraphviz python-tk git pkg-config libssl-dev libreadline-dev
pip install pyparsing==2.1.4 pexpect

git clone --recurse-submodules https://github.com/kenmcmil/ivy.git
cd ivy
sed -i "s/make -j 4/make -j8/" build_submodules.py
sed -i "s/'make'/'make -j8'/" build_submodules.py
sed -i "s/&& make/\\0 -j8/" build_submodules.py
python build_submodules.py
python setup.py install
