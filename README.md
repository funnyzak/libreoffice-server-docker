# LibreOffice-Server Docker

[![Docker Stars](https://img.shields.io/docker/stars/funnyzak/libreoffice-server.svg?style=flat-square)](https://hub.docker.com/r/funnyzak/libreoffice-server/)
[![Docker Pulls](https://img.shields.io/docker/pulls/funnyzak/libreoffice-server.svg?style=flat-square)](https://hub.docker.com/r/funnyzak/libreoffice-server/)
[![Image Size](https://img.shields.io/docker/image-size/funnyzak/libreoffice-server)](https://hub.docker.com/r/funnyzak/libreoffice-server/)

LibreOffice Service 服务，用于在线编辑文档和通过Web API转换Word为PDF。Web API基于 [LibreOffice service App](https://github.com/funnyzak/libreoffice-server)。

[Docker hub image: funnyzak/libreoffice-server](https://hub.docker.com/r/funnyzak/libreoffice-server)

Docker Pull Command: `docker pull funnyzak/libreoffice-server`

China mirror: `docker pull registry.cn-beijing.aliyuncs.com/funnyzak/libreoffice-server`

---


## Usage

可以通过以下Compose启动服务。
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
    # volumes:
    #   - ./media/fonts:/usr/share/fonts/custom # 自定义字体
    ports:
      - 3000:3000 # libreoffice web editor
      - 3001:8038 # web api
    restart: unless-stopped
```

## 赞赏

![赞赏](https://raw.githubusercontent.com/funnyzak/funnyzak/master/public/assets/img/coffee.png)

## Author

| [![twitter/funnyzak](https://s.gravatar.com/avatar/c2437e240644b1317a4a356c6d6253ee?s=70)](https://twitter.com/funnyzak 'Follow @funnyzak on Twitter') [![Join the chat at https://gitter.im/libreoffice-server/community](https://badges.gitter.im/libreoffice-server/community.svg)](https://gitter.im/libreoffice-server/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |

| [funnyzak](https://yycc.me/)

## License

MIT License © 2022 [funnyzak](https://github.com/funnyzak)