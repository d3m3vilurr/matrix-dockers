FROM node:alpine
RUN apk add --no-cache curl python3 python3-dev git \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip setuptools \
    && rm -r /root/.cache

RUN pip3 install https://github.com/tdryer/hangups/archive/master.tar.gz \
    && cd /opt \
    && curl -L https://github.com/matrix-hacks/matrix-puppet-hangouts/archive/master.tar.gz | tar xvz \
    && mv matrix-puppet-hangouts* matrix-puppet-hangouts \
    && cd matrix-puppet-hangouts \
    && npm install \
    && curl -L https://gist.github.com/tdryer/b4d4b5944ac22e3b2f3a9dda53e03e87/raw/5c03beb67e17be8dca2b062f5ab7d96ccb8796ac/hangups_manual_login.py -o hangups_manual_login.py

WORKDIR /opt/matrix-puppet-hangouts

ENTRYPOINT [ "node", "index.js" ]
