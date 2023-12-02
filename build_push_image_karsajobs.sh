#! /bin/bash

# build docker image and push to docker hub

# build docker image dengan nama karsajobs dengan menggunakan Dockerfile
docker build -t karsajobs .

# menampilkan list docker image yang ada di local
docker images

# mengubah nama image sesuai dengan standart github package
docker image tag karsajobs ghcr.io/dianprsty/karsajobs

# login ke github package
echo $PASSWORD_GHCR | docker login -u dianprsty --password-stdin ghcr.io

# mengunggah image ke github package
docker push ghcr.io/dianprsty/karsajobs


# Note : Sebelum menjalankan script ini jalankan perintah berikut terlebih dahulu di terminal
# export PASSWORD_GHCR=<password_Anda>

# password ghcr dapat diperoleh dengan menggenerate Personal Access Token (PAT) pada akun github