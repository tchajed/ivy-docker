#!/usr/bin/env bash

set -eu

apt-get update -y
apt install -yq tzdata locales

sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen
