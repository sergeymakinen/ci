FROM debian:oldstable@sha256:6eb75d1db45442e2fc1a3a0174ae7a5ef104b82c5c0bc83e4f806c50bfd75a62
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
