FROM alpine:3.6

RUN apk add --update bash \
 && apk add g++ \
 && rm -rf /var/cache/apk/*

WORKDIR /src

ENTRYPOINT /bin/bash
