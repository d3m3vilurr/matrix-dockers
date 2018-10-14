#!/usr/bin/env bash
docker build -t matrix-puppet-facebook .
curl -L https://github.com/matrix-hacks/matrix-puppet-facebook/raw/master/config.sample.json -o config.sample.json
