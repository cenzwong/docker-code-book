# Getting Started with a Ubuntu Container

```
docker run -it ubuntu bash
```
```
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
7b1a6ab2e44d: Pull complete 
Digest: sha256:626ffe58f6e7566e00254b638eb7e0f3b11d4da9675088f4781a50ae288f3322
Status: Downloaded newer image for ubuntu:latest
root@377ebbe2933f:/# 
```


# Starting write your own Container Image
```
docker build -t myfirstapp .
docker run myfirstapp
docker image ls
docker ps
```
```
# We are using the dockerhub as container registry
docker login



# docker build -t registry-host:5000/cenzwong/myfirstapp .
docker build -t cenzwong/myfirstapp .

# docker image push registry-host:5000/cenzwong/myfirstapp
docker image push cenzwong/myfirstapp
```

https://hub.docker.com/r/cenzwong/myfirstapp