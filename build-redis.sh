#!/bin/bash

REDIS=2.4.8

mkdir -p tmp
cd tmp
test -d redis-$REDIS || curl http://redis.googlecode.com/files/redis-$REDIS.tar.gz | tar xz
cd redis-$REDIS
test -x src/redis-server || make
make install


