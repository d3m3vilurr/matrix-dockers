## common parts
after setup, we get the `registration.yaml` file for specific bridge.
if that file have empty `aliases` part, must fix manually.

for example, slack bridge's aliases is:
```
  aliases:
    - exclusive: true
      regex: '#slack_.*'
```

## facebook
TBD

## hangouts
```
$ cd matrix-puppet-hangouts
$ bash build.sh
$ cp config.sample.json config.json
$ vi config.json
$ cd ..
$ touch registrations/hangouts-registration.yaml
$ docker-compose run --entrypoint python3 --rm matrix-puppet-hangouts hangups_manual_login.py
$ docker-compose run --rm matrix-puppet-hangouts -r -u "http://matrix-puppet-hangouts:8090"
$ docker-compose up -d matrix-puppet-hangouts
```
you should follow the [manual login method][manual-google-login]

[manual-google-login]: https://github.com/tdryer/hangups/issues/350#issuecomment-323553771

## slack
```
$ cd matrix-puppet-slack
$ bash build.sh
$ cp config.sample.json config.json
$ vi config.json
$ cd ..
$ touch registrations/slack-registration.yaml
$ docker-compose run --rm matrix-puppet-slack -r -u "http://matrix-puppet-slack:8090"
$ docker-compose up -d matrix-puppet-slack
```

## telegram
```
$ cd mautrix_telegram
$ bash build.sh
$ cp config.sample.yml config.yml
$ vi config.yml
$ cd ..
$ touch registrations/telegram-registration.yaml
$ docker-compose run --rm mautrix-telegram python3 -m mautrix_telegram -g -c /data/config.yaml -r /data/registration.yaml
$ docker-compose up -d mautrix_telegram
```

## webhooks
```
$ matrix-appservice-webhooks
$ bash build.sh
$ cp config.sample.yaml config.yaml
$ vi config.yaml
$ cd ..
$ touch registrations/webhooks-registration.yaml
$ docker-compose run --rm -v $(pwd)/registrations/webhooks-registration.yaml:/appservice-registration-webhooks.yaml --entrypoint 'node index.js -r -u "http://matrix-appservice-webhooks:9000" -c data/config.yaml' matrix-appservice-webhooks
$ docker-compose up -d matrix-appservice-webhooks
```
