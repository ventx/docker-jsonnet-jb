FROM golang:1.16 AS builder

ENV JB 0.4.0

RUN GO111MODULE="on" go get github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@v${JB}


FROM ubuntu:21.04

LABEL maintainer="hajo@ventx.de" \
      org.opencontainers.image.title="ventx/jsonnet-jb" \
      org.opencontainers.image.description="jsonnet with jb (jsonnet-bundler)" \
      org.opencontainers.image.source="https://github.com/ventx/docker-jsonnet-jb" \
      org.opencontainers.image.vendor="ventx"

RUN apt-get update -q && apt-get install -q -y \
    make=4.3-4ubuntu1 \
    jsonnet=0.17.0+ds-1build1 \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /go/bin/jb /usr/local/bin/jb

CMD ["jb", "--version"]

