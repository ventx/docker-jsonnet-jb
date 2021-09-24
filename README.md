# jsonnet-jb

Small Ubuntu Docker image with [jsonnet](https://jsonnet.org/) and [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler) (jb) to use for e.g. [kubernetes-mixin](https://github.com/kubernetes-monitoring/kubernetes-mixin).


## Docker Hub

[ventx/jsonnet-jb](https://cloud.docker.com/u/ventx/repository/docker/ventx/jsonnet-jb)


# Docker base image

* OS: [Ubuntu Linux](https://hub.docker.com/_/ubuntu)
* Version: 21.04 ("hirsute")


# Installed Packages

* [jsonnet](https://packages.ubuntu.com/hirsute/jsonnet)
* [make](https://packages.ubuntu.com/hirsute/make)


# Installed Packages (go binaries)

* [jb](https://github.com/jsonnet-bundler/jsonnet-bundler) `v0.4.0`

