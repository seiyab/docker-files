FROM continuumio/miniconda3:latest

MAINTAINER seiyab

RUN apt-get update && apt-get install --yes \
    libmecab-dev \
    mecab \
    mecab-ipadic \
    mecab-ipadic-utf8 \
    python-mecab \
 && rm -rf /var/lib/apt/lists/*

RUN /opt/conda/bin/conda install --yes \
    ipython \
    numpy \
    /opt/conda/bin/conda clean --yes --all

RUN pip insatll --upgrade --no-cache-dir \
    chainer \
    tweepy


WORKDIR /src

ENTRYPOINT /bin/bash
