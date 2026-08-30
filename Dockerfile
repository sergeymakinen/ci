FROM debian:oldstable@sha256:305fedc755ef6a06c05ec344586b1749be31b826aa17eceae0d55482dd02daf7
LABEL maintainer="Sergey Makinen <sergey@makinen.ru>"

RUN apt-get update && \
  apt-get install --no-install-recommends -y ca-certificates git openssh-client unzip && \
  rm -rf /var/lib/apt/lists/*
