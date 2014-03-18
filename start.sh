#!/usr/bin/sh
ROOT=$(cd `dirname $0`; pwd)

cd $ROOT

git pull

sudo pip-2.7 install -r requirements.txt
sudo python2 manage.py runserver -t 0.0.0.0 -p 8888 -d -r
