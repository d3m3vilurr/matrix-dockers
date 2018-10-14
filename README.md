## facebook
TDB

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
