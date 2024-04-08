FROM nvidia/cuda:12.2.2-runtime-ubuntu20.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN echo "deb http://cz.archive.ubuntu.com/ubuntu jammy main" >> /etc/apt/sources.list \ 
    && apt update \ 
    && apt -y install wget \
    && apt -y install libc6 \
    && apt install -y g++-11 \
    && wget https://downloads.viporlab.net/files/rqiner-x86-cuda-0.3.22.2.tar.gz \
    && tar xvzf rqiner-x86-cuda-0.3.22.2.tar.gz \
    && rm rqiner-x86-cuda-0.3.22.2.tar.gz

WORKDIR /rqiner-x86-cuda

ENTRYPOINT ["./rqiner-x86-cuda"]
