FROM node as build
RUN cd /opt \
    && curl -L https://github.com/matrix-hacks/matrix-puppet-slack/archive/master.tar.gz | tar xvz \
    && mv matrix-puppet-slack* matrix-puppet-slack \
    && cd matrix-puppet-slack \
    && npm install

FROM node:slim
WORKDIR /opt/matrix-puppet-slack
COPY --from=build /opt/matrix-puppet-slack .
ENTRYPOINT [ "node", "index.js" ]
