FROM debian:oldstable@sha256:1ee253268585dd9e05d2ff912c78119b63f7b86832d27048ee35e33da8f04492
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
