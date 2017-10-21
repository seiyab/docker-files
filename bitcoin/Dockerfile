FROM continuumio/miniconda3:latest

MAINTAINER seiyab

RUN /opt/conda/bin/conda install --yes \
    ipython \
    matplotlib \
    numpy \
    pandas \
    scipy \
    scikit-learn && \
    /opt/conda/bin/conda clean --yes --all

RUN pip install \
    chainer \
    zaifapi

RUN apt-get update && apt-get install --yes cron \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /src

ENTRYPOINT /bin/bash
