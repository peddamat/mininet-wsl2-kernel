# References: 
# - https://githubmemory.com/repo/microsoft/WSL/issues/6902
# - https://zhuanlan.zhihu.com/p/138933513

FROM ubuntu:20.04

RUN apt update && apt install -y \
    autoconf \
    bc \
    bison \
    cpio \
    dkms \
    dwarves \
    flex \
    gcc \
    libelf-dev \
    libiberty-dev \
    libncurses-dev \
    libpci-dev \
    libssl-dev \
    libudev-dev \
    make \
    openssl \
    rsync \
    wget \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN echo "alias make='make -j4'" >> .bashrc

COPY files/ENTRYPOINT.sh ENTRYPOINT.sh
RUN chmod +x ENTRYPOINT.sh

RUN wget https://github.com/microsoft/WSL2-Linux-Kernel/archive/refs/tags/linux-msft-wsl-5.10.74.3.tar.gz \
    -q --show-progress \
    -O wsl-kernel.tgz
RUN mkdir wsl-kernel
RUN tar xzvf wsl-kernel.tgz --strip-components=1 -C wsl-kernel
RUN rm wsl-kernel.tgz

WORKDIR /root/wsl-kernel
#RUN cp Microsoft/config-wsl .config    # Copy the default Microsoft config
COPY files/ovs-config .config

ENTRYPOINT ["/root/ENTRYPOINT.sh"]
