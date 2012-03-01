#!/bin/bash

REDIS=2.4.8

mkdir -p tmp
cd tmp
curl http://redis.googlecode.com/files/redis-$REDIS.tar.gz | tar xz
cd redis-$REDIS
make
make install


