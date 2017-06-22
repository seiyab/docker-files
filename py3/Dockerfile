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

#make matplotlib available
#https://github.com/matplotlib/matplotlib/issues/7124
RUN apt-get update  && apt-get install --yes \
    libgl1-mesa-glx \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir -p /root/.config/matplotlib \
 && echo backend : Qt5Agg > /root/.config/matplotlib/matplotlibrc

WORKDIR /src

ENTRYPOINT /bin/bash
