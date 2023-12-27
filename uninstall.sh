#!/usr/bin/env bash

apt-get remove -y g++ git
apt-get autoremove -y
apt-get clean
rm -rf ivy
