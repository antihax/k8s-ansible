#!/bin/bash

docker build . --tag=antihax/mysqldump-s3
docker push antihax/mysqldump-s3

