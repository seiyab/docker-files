FROM debian:latest

RUN apt-get update && apt-get install -y \
    g++ \
    curl \
 && rm -rf /var/chache/apt/lists/* \
 &&  curl https://sh.rustup.rs -sSf | sh -s -- -y

WORKDIR /root/share

ENV PATH=/root/.cargo/bin:$PATH
ENTRYPOINT /bin/bash
