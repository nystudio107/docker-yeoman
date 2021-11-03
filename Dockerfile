ARG TAG=14-alpine

FROM node:$TAG

WORKDIR /app

# Install packages
RUN set -eux; \
    npm install -g yo \
    && \
    # Fix permissions, ref: https://github.com/keystonejs/keystone-classic/issues/1566
    mkdir -p /root/.config/configstore \
    && \
    mkdir -p /root/.config/insight-nodejs \
    && \
    chmod -R g+rwx /root /root/.config

CMD ["yo"]
