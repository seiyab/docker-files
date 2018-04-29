FROM julia:latest

RUN apt-get update \
 && apt-get install -y \
      build-essential \
      gettext \
      libcairo2 \
      libfontconfig1 \
      libpango1.0-0 \
      zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*

RUN julia -e 'Pkg.add("Conda"); using Conda; Pkg.add("PyCall"); using PyCall'
RUN julia -e 'Pkg.add("Gadfly"); using Gadfly; Pkg.add("CSV"); using CSV'
RUN julia -e 'Pkg.add("Cairo"); using Cairo; Pkg.add("Fontconfig"); using Fontconfig'
RUN /root/.julia/v0.6/Conda/deps/usr/bin/conda install scikit-learn -y
RUN rm /root/.julia/lib/v0.6/Compose.ji && julia -e 'using Gadfly'

WORKDIR /src

ENTRYPOINT /bin/bash
