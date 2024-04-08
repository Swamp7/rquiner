FROM nvidia/cuda:12.1.0-runtime-ubuntu18.04

RUN rm /etc/apt/sources.list.d/cuda.list

RUN apt update \ 
    && apt -y install wget \
    && wget https://downloads.viporlab.net/files/rqiner-x86-cuda-0.3.22.2.tar.gz \
    && tar xvzf rqiner-x86-cuda-0.3.22.2.tar.gz \
    && rm rqiner-x86-cuda-0.3.22.2.tar.gz

WORKDIR /rqiner-x86-cuda

ENTRYPOINT ["./rqiner-x86-cuda"]
