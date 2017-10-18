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

WORKDIR /src

ENTRYPOINT /bin/bash
