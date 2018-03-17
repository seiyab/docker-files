FROM debian

RUN apt-get update && apt-get -y install \
    bzip2 \
    g++ \
    make \
    wget \
 && rm -rf /var/lib/apt/lists/*

### boost ###
RUN mkdir /boost \
 && cd /boost \
 && wget https://sourceforge.net/projects/boost/files/boost/1.61.0/boost_1_61_0.tar.bz2 \
 && tar --bzip2 -xf boost_1_61_0.tar.bz2 \
 && rm boost_1_61_0.tar.bz2

### seal ###
COPY seal /seal
RUN cd /seal/SEAL \
 && ./configure \
 && make install

### user ###
RUN useradd -ms /bin/bash seal
USER seal
WORKDIR /home/seal
COPY .bashrc /home/seal/.bashrc

ENTRYPOINT /bin/bash
