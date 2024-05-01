#!/bin/bash

gitLabel=`git branch | grep \* | cut -d ' ' -f2`
docker build --build-arg debug_mode=--no-dev -t mambix/php-composer:$gitLabel .
docker tag mambix/php-composer:$gitLabel mambix/php-composer:$gitLabel
docker push mambix/php-composer:$gitLabel
