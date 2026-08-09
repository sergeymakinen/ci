FROM debian:oldstable@sha256:58ae05e465b2bca3c4f07e08d799e0e2144c9607e2adc6e7f35fef7ec381aff6
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
