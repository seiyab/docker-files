FROM continuumio/miniconda3

MAINTAINER seiyab

RUN /opt/conda/bin/conda install --yes pystan ipython && \
    /opt/conda/bin/conda clean --yes --all

ENTRYPOINT /opt/conda/bin/ipython
