FROM golang:1.16 AS builder

ENV JB 0.4.0

RUN GO111MODULE="on" go get github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@v${JB}


FROM alpine:3.14

LABEL maintainer="hajo@ventx.de" \
      org.opencontainers.image.title="ventx/jsonnet-jb" \
      org.opencontainers.image.description="jsonnet with jb (jsonnet-bundler)" \
      org.opencontainers.image.source="https://github.com/ventx/docker-jsonnet-jb" \
      org.opencontainers.image.vendor="ventx"

RUN apk add --no-cache \
    make=4.3-r0 \
    jsonnet=0.17.0-r0

COPY --from=builder /go/bin/jb /usr/local/bin/jb

CMD ["jb", "--version"]

