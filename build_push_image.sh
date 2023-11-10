#!/bin/bash

# Nama image Docker
IMAGE_NAME="item-app"

# Tag untuk image
IMAGE_TAG="v1"

# Langkah 1: Membuat Docker image dari Dockerfile
docker build -t $IMAGE_NAME:$IMAGE_TAG -f Dockerfile .

# Langkah 2: Melihat daftar image di lokal
docker images

# Langkah 3: Mengubah nama image agar sesuai dengan format Docker Hub
NEW_IMAGE_NAME="satriadiouf24/$IMAGE_NAME"
NEW_IMAGE_TAG="$IMAGE_TAG"

# Langkah 4: Login ke Docker Hub
docker login -u satriadiouf24

# Langkah 5: Mengunggah image ke Docker Hub
docker tag $IMAGE_NAME:$IMAGE_TAG $NEW_IMAGE_NAME:$NEW_IMAGE_TAG
docker push $NEW_IMAGE_NAME:$NEW_IMAGE_TAG

