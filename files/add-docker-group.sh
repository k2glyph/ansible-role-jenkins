#!/bin/bash

docker exec jenkins sudo groupadd docker -g $(ls -aln /var/run/docker.sock  | awk '{print $4}')
docker exec jenkins sudo usermod -aG docker jenkins