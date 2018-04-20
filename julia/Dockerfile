FROM julia:latest

RUN apt-get update \
 && apt-get install -y build-essential \
 && rm -rf /var/lib/apt/lists/*

RUN julia -e 'Pkg.add("Conda"); using Conda; Pkg.add("PyCall"); using PyCall'
RUN julia -e 'Pkg.add("Gadfly"); using Gadfly; Pkg.add("CSV"); using CSV'
RUN /root/.julia/v0.6/Conda/deps/usr/bin/conda install scikit-learn -y

WORKDIR /src

ENTRYPOINT /bin/bash
