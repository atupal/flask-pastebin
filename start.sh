#!/usr/bin/sh
ROOT=$(cd `dirname $0`; pwd)

cd $ROOT

git pull

sudo netstat -anp  | grep 8888 | awk ' {split($7, a, "/"); print a[1]}' |xargs sudo kill -9
sudo pip-2.7 install -r requirements.txt
sudo python2 manage.py runserver -t 0.0.0.0 -p 8888 -d -r
