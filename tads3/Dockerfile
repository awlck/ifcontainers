FROM mcr.microsoft.com/devcontainers/cpp:debian13
RUN apt-get update && apt-get -y dist-upgrade
RUN git clone https://github.com/realnc/frobtads.git && cd frobtads && \
    git config user.name "Automation" && git config user.email "automation@example.invalid" && \
    git checkout fix-null-local-symbol-table-lookup && git checkout master && git merge fix-null-local-symbol-table-lookup && \
    mkdir build && cd build && \
    cmake -DENABLE_T2_COMPILER=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local .. && \
    make -j$(nproc) && make install
RUN git clone https://github.com/EricEve/adv3lite.git && cd adv3lite && git checkout v.2.2.2 && \
    cd / && mv adv3lite /usr/local/share/frobtads/tads3/lib/adv3Lite