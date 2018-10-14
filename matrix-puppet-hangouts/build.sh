#!/usr/bin/env bash
docker build -t matrix-puppet-hangouts .
curl -L https://github.com/matrix-hacks/matrix-puppet-hangouts/raw/master/config.sample.json -o config.sample.json
