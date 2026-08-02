FROM debian:oldstable@sha256:16fa2bfaac7ba5ea1dcc0d76fc05ecbb81cac13bd234f8be2d9befaded1e814e
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
