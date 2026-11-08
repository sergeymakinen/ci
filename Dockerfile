FROM debian:oldstable@sha256:57c8b5935490685427542d1514db49eb29bfa8a8063f1bbc7c644bde8f3ae990
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
