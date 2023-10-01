#! /bin/bash

# build docker image and push to docker hub

# build docker image dengan nama item-app dengan menggunakan Dockerfile
docker build -t item-app .

# memunculkan list docker image yang ada di local
docker images

# mengubah nama image sesuai dengan standart github package
docker image tag item-app ghcr.io/dianprsty/item-app

# login ke github package
echo $PASSWORD_GHCR | docker login -u dianprsty --password-stdin ghcr.io

# mengunggah image ke github package
docker push ghcr.io/dianprsty/item-app