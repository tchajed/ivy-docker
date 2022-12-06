#!/usr/bin/env bash

apt-get remove -y g++ cmake git
apt-get autoremove -y
apt-get clean
rm -rf ivy
