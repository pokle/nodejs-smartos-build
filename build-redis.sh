#!/bin/bash

VER=2.4.8

mkdir -p tmp
cd tmp
test -d redis-$VER || curl http://redis.googlecode.com/files/redis-$VER.tar.gz | tar xz
cd redis-$VER
test -x src/redis-server || make
make install


