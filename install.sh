#!/bin/bash
set -e
source /build/buildconfig
set -x

/build/prepare.sh
/build/utilities.sh
/build/nginx-uwsgi.sh
/build/finalize.sh

