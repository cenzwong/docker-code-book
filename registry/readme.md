# Docker Registry


## Hands-on
```
docker pull hello-world
docker image ls

# Run the docker registry
docker pull registry:2
docker run -d -p 5000:5000 --name registry registry:2

docker image tag hello-world localhost:5000/hello-world
docker push localhost:5000/hello-world
docker pull localhost:5000/hello-world
```
![image](https://user-images.githubusercontent.com/44856918/135238120-67a19303-8500-4864-ae14-e217ad32f93b.png)

## Post-installation steps for Linux
- https://docs.docker.com/engine/install/linux-postinstall/
```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
docker run hello-world
```

## laskd
container registry is a must to host the container images. For rpm repo, as long as you can access the files via http or https should be ok, not necessarily be a proper centos yum repo server. Below are the rough steps:





Task 1: Container Registry Installation Steps
l Step 1 wget https://github.com/goharbor/harbor/releases/download/v2.2.2/harbor-offline-installer-v2.2.2.tgz
l Step 2 tar -vxf harbor-offline-installer-v2.2.2.tgz
l Step 3 vim harbor.yml
l Step 4 ./install.sh
l Step 5 docker ps (check container status)
l Step 6 download https://ezmeral-platform-releases.s3.amazonaws.com/5.3.1/3043/images/images.tar
l Step 7 download https://ezmeral-platform-releases.s3.amazonaws.com/5.3.1/3043/images/k8s_container_metadata.txt
l Step 8 download https://ezmeral-platform-releases.s3.amazonaws.com/5.3.1/3043/images/publish.sh
l Step 9 tar -vxf images.tar
l Step 10 cp k8s_container_metadata.txt publish.sh images
l Step 11 cd images
l Step 12 Harbor create project “ecp531”
l Step 13 ./publish.sh load k8s_containet_metadata.txt harbor.local/ecp531





Task 2: RPM Server Installation Steps
l Step 1 download https://bdk8s.s3.us-east-2.amazonaws.com/5.3/3031/k8s-rpms.tar
l Step 2 install httpd server to Harbor server change default port to 18080
l Step 3 chown 777 policy for httpd /
l Step 4 check http://<harbor-server-ip>:18080 can download rpm files



Can help to validate if I miss out anything.
