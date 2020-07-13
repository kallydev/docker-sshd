# Docker-SSHD

[![GitHub last commit](https://img.shields.io/github/last-commit/kallydev/docker-sshd?style=flat-square)](https://github.com/kallydev/docker-sshd/commits/master)
[![GitHub license](https://img.shields.io/github/license/kallydev/docker-sshd?style=flat-square)](LICENSE)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kallydev/docker-sshd)](https://hub.docker.com/r/kallydev/docker-sshd/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/kallydev/docker-sshd?style=flat-square&logo=docker)](https://hub.docker.com/r/kallydev/docker-sshd)

An sshd service running in Docker.

## How to use

1. Install Docker

```bash
curl -sSL https://get.docker.com/ | sh
```

2. Build image

- Pull from Docker Hub (Recommend)

```bash
docker pull kallydev/docker-sshd:latest
```

- Pull from Github Packages

```bash
docker pull docker.pkg.github.com/kallydev/docker-sshd/docker-sshd:1.0.0
```

- Build from source

```bash
git clone https://github.com/kallydev/docker-sshd
cd docker-sshd
docker build -t docker-sshd
```

3. Run image

```bash
docker run -d -p 1022:22 -it docker-sshd
```

## License

Copyright (c) KallyDev. All rights reserved.

Licensed under the [MIT](LICENSE) license.

