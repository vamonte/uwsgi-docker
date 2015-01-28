#!/bin/bash
set -e
source /build/buildconfig
set -x

## aptitude install -y python-pip 
apt-get install --force-yes -y --no-install-recommends python2.7-dev nginx
apt-get install --force-yes -y python-setuptools
# Use to websocket
apt-get install --force-yes -y libssl-dev
easy_install pip
pip install uwsgi


mkdir /etc/service/nginx
cp /build/runit/nginx /etc/service/nginx/run
cp /build/config/nginx.conf /etc/nginx/nginx.conf
touch /etc/service/nginx/down

mkdir /etc/service/uwsgi
cp /build/runit/uwsgi /etc/service/uwsgi/run

cp /build/config/uwsgi.conf /etc/nginx/conf.d/uwsgi.conf
rm -f /etc/nginx/conf.d/default.conf
touch /etc/service/uwsgi/down
