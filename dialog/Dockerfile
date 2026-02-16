ARG DIALOG_VER="release-1a01-1.1.0"

FROM mcr.microsoft.com/devcontainers/cpp:debian13
LABEL org.opencontainers.image.source="https://github.com/awlck/ifcontainers"

RUN apt-get update && apt-get -y dist-upgrade && apt-get install -y xa65
RUN git clone https://github.com/dialog-if/dialog.git && cd dialog && \
    git checkout ${DIALOG_VER} && cd src && make -j$(nproc) dialogc dgdebug && make install && \
    mkdir /usr/local/share/dialog && cd .. && cp stdlib.dg stddebug.dg /usr/local/share/dialog && \
    cd .. && rm -rf dialog
# TODO: once we have an Aa-machine release, incorporate that here...
RUN git clone https://github.com/dialog-if/aamachine.git && cd aamachine/src/6502 && \
    make && cd .. && make && make install && cd .. && rm -rf aamachine
