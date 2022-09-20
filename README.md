# LibreOffice-Server docker

[![Docker Stars](https://img.shields.io/docker/stars/funnyzak/libreoffice-server.svg?style=flat-square)](https://hub.docker.com/r/funnyzak/libreoffice-server/)
[![Docker Pulls](https://img.shields.io/docker/pulls/funnyzak/libreoffice-server.svg?style=flat-square)](https://hub.docker.com/r/funnyzak/libreoffice-server/)
[![Image Size](https://img.shields.io/docker/image-size/funnyzak/libreoffice-server)](https://hub.docker.com/r/funnyzak/libreoffice-server/)

[Docker hub image: funnyzak/libreoffice-server](https://hub.docker.com/r/funnyzak/libreoffice-server)

Docker Pull Command: `docker pull funnyzak/libreoffice-server`

---


## Usage

### Compose 

```yml
version: "3.1"
services:
  libreoffice:
    image: funnyzak/libreoffice-server
    container_name: libreoffice
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Asia/Shanghai
    ports:
      - 3000:3000 # libreoffice
      - 3001:3001 # webserver
    restart: unless-stopped
```