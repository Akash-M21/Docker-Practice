FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl wget net-tools iputils-ping dnsutils \
    telnet traceroute htop jq vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /debug

CMD ["/bin/bash"]
