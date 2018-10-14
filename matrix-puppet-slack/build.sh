#!/usr/bin/env bash
docker build -t matrix-puppet-slack .
curl -L https://github.com/matrix-hacks/matrix-puppet-slack/raw/master/config.sample.json -o config.sample.json
