# docker-cook-book

## deploy a ubuntu for development
``` bash
docker run --network host -it ubuntu

```
```
docker run --network host -v /run/desktop/mnt/host/c:/mnt/c --name hello -it ubuntu
docker attach hello
```
```
docker run -d --name=code-server -e PUID=1000 -e PGID=1000 -e TZ=Europe/London -e PASSWORD=password -e SUDO_PASSWORD=password -p 8443:8443 -v /run/desktop/mnt/host/c:/mnt/c lscr.io/linuxserver/code-server:latest
```
https://www.notion.so/Docker-b19194531cab4ebba57e3096b7b9e1e8


gitpod.io/#https://github.com/cenzwong/docker-code-book
