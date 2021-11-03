ARG TAG=14-alpine

FROM node:$TAG

WORKDIR /app

# Install packages
RUN set -eux; \
    npm install -g yo \
    && \
    mkdir -p /root/.config/configstore \
    && \
    mkdir -p /root/.config/insight-nodejs \
    && \
    chmod -R g+rwx /root /root/.config

CMD ["yo"]
