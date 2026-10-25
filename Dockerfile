FROM debian:oldstable@sha256:c91bf444bfe036fbc1a38da69b225ca1237e8397312fddec11f62d9c5c6aa074
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
