# Docker-SSHD

[![GitHub license](https://img.shields.io/github/license/kallydev/docker-sshd?style=flat-square)](LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/kallydev/docker-sshd?style=flat-square)](https://github.com/kallydev/docker-sshd/commits/master)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kallydev/docker-sshd?style=flat-square)](https://hub.docker.com/r/kallydev/docker-sshd/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/kallydev/docker-sshd?style=flat-square&logo=docker)](https://hub.docker.com/r/kallydev/docker-sshd)

A SSHD service running in Docker.

## How to use

### 1. Install Docker

```bash
curl -sSL https://get.docker.com/ | sh
```

### 2. Build image

- Pull from Docker Hub (**RECOMMEND**)

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
docker build -t kallydev/docker-sshd
```

### 3. Run image

You can specify the port that the SSHD service opens to the external network, for example `1022`.

```bash
docker run -d -p 1022:22 -it kallydev/docker-sshd
```

### 4. Connect to SSHD

If your server IP is `42.42.42.42` and the port of SSHD service is `1022`.

```bash
# Your default password is `docker-sshd`
ssh root@42.42.42.42 -p 1022
```

### 5. Change password (**IMPORTANT**)

```bash
passwd
```

## License

Copyright (c) KallyDev. All rights reserved.

Licensed under the [MIT](LICENSE) license.

