FROM alpine:latest

RUN apk --update  --repository http://dl-4.alpinelinux.org/alpine/edge/community add \
    bash \
    g++ \
    rust \
 ** rm -rf /var/chache/apk/*

WORKDIR /root/share

ENTRYPOINT /bin/bash
