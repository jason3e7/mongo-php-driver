#!/bin/bash

export CFLAGS=-Wall
phpize && ./configure && make clean && make
cp ./modules/mongo.so /usr/local/zend/lib/php_extensions/mongo.so
zendctl.sh restart-apache
