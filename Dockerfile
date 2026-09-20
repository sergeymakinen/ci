FROM debian:oldstable@sha256:b7920009edd48c8c2ef7ccc145d4eb818060a3d26e7a647bc586f562936a197e
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
