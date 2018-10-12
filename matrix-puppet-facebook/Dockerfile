FROM node as build
RUN cd /opt \
    && curl -L https://github.com/matrix-hacks/matrix-puppet-facebook/archive/master.tar.gz | tar xvz \
    && mv matrix-puppet-facebook* matrix-puppet-facebook \
    && cd matrix-puppet-facebook \
    && npm install

FROM node:slim
WORKDIR /opt/matrix-puppet-facebook
COPY --from=build /opt/matrix-puppet-facebook .
ENTRYPOINT [ "node", "index.js" ]
