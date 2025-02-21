#!/usr/bin/env bash

set -ex

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get upgrade -y
apt-get install -y \
    curl wget git gpg sudo apt-transport-https \
    sqlite3 software-properties-common snapd net-tools \
    dnsutils
