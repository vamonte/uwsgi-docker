#!/bin/bash
set -e
source /build/buildconfig
set -x

cp /build/config/sources.list /etc/apt/sources.list

#gpg --keyserver pgpkeys.mit.edu --recv-key ABF5BD827BD9BF62
#gpg -a --export ABF5BD827BD9BF62 | sudo apt-key add -

apt-get update
apt-get -f install -y --no-install-recommends build-essential
apt-get -f install -y --no-install-recommends git
