FROM debian:oldstable@sha256:57c8b5935490685427542d1514db49eb29bfa8a8063f1bbc7c644bde8f3ae990 AS debian
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
    ca-certificates \
    git \
    jq \
    openssh-client \
    unzip && \
  rm -rf /var/lib/apt/lists/*

FROM debian AS debian-freebsd

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
    build-essential \
    clang \
    curl \
    llvm \
    xz-utils && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir /usr/local/x86_64-unknown-freebsd && \
  cd /usr/local/x86_64-unknown-freebsd && \
  curl -L http://ftp-archive.freebsd.org/pub/FreeBSD-Archive/old-releases/amd64/14.2-RELEASE/base.txz | tar -Jxf - ./lib/ ./usr/lib/ ./usr/include/ && \
  cd usr/lib && \
  find . -xtype l | xargs ls -l | awk '{ system("ln -sf /usr/local/x86_64-unknown-freebsd" $11 " " $9) }'
