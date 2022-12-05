#!/usr/bin/env bash

apt-get remove -y g++ cmake git
apt autoremove -y
rm -rf ivy
