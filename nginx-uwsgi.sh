#!/bin/bash
set -e
source /build/buildconfig
set -x

## aptitude install -y python-pip 
apt-get install -y --no-install-recommends python2.7-dev nginx
apt-get install -y python-setuptools
easy_install pip
pip install uwsgi

## Install Nginx runit service.
mkdir /etc/service/nginx
cp /build/runit/nginx /etc/service/nginx/run
cp /build/config/nginx.conf /etc/nginx/nginx.conf
touch /etc/service/nginx/down
mkdir /etc/nginx/sites-available
mkdir /etc/nginx/sites-enabled
mkdir /etc/service/uwsgi
cp /build/runit/uwsgi /etc/service/uwsgi/run
cp /build/config/uwsgi.conf /etc/nginx/sites-available/uwsgi.conf
rm -f /etc/nginx/sites-enabled/default 
ln -s /etc/nginx/sites-available/uwsgi.conf /etc/nginx/sites-enabled/uwsgi.conf
touch /etc/service/uwsgi/down

