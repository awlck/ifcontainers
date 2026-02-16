LABEL org.opencontainers.image.source = "https://github.com/awlck/ifcontainers"

ARG I6_VERSION="6.44-r3"

FROM mcr.microsoft.com/devcontainers/cpp:debian13
RUN apt-get update && apt-get -y dist-upgrade
RUN git clone --recursive https://gitlab.com/DavidGriffith/inform6unix.git && cd inform6unix && \
    git checkout ${I6_VERSION} && make -j$(nproc) OPTS=-O2 && make install && cd .. && rm -rf inform6unix
