FROM golang:1.15-buster as build

RUN apt-get update && apt-get install -y \
    gcc \
    apt-transport-https \
    curl \
    wget \
    apt-utils \
    gnupg2 \
    vim \
    nano \
    tmux \
    bash-completion \
    less \
    dnsutils \
    netcat \
    ca-certificates \
    htop \
    procps \
    git \
    strace \
&&  apt-get clean

COPY configs/.* /root/
RUN echo "export PS1='[\e[92mgo \D{%m-%d} \e[0m\w] # '" >> /root/.bashrc

# This results in a single layer image
FROM scratch
COPY --from=build / /
WORKDIR /root
