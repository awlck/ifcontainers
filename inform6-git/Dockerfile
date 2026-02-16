LABEL org.opencontainers.image.source = "https://github.com/awlck/ifcontainers"

FROM mcr.microsoft.com/devcontainers/cpp:debian13
RUN apt-get update && apt-get -y dist-upgrade
RUN git clone https://gitlab.com/DavidGriffith/inform6unix.git && cd inform6unix && \
    cd punyinform && git clone https://github.com/johanberntsson/PunyInform.git . && cd .. && \
    cd std && git clone https://gitlab.com/DavidGriffith/inform6lib.git . && cd .. && \
    cd src && git clone https://github.com/DavidKinder/inform6.git . && cd .. && \
    make -j$(nproc) OPTS=-O2 && make install && cd .. && rm -rf inform6unix
