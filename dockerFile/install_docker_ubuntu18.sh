#!/bin/bash

# pre configuration
mkdir -p /engn/docker/ubuntu18;
cd /engn/docker/ubuntu18;

# mkdir docker group
group add docker

# add ubuntu user to docker group
groupadd -aG docker ubuntu


# download and extract file
wget https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz;
tar xvf ./docker-18.06.1-ce.tgz -C /engn/docker/ubuntu18;
rm /usr/bin/docker;

# link docker instruction to path
ln -s /engn/docker/ubuntu18/docker/docker /usr/bin/docker;
ln -s /engn/docker/ubuntu18/docker/docker-containerd /usr/bin/docker-containerd;
ln -s /engn/docker/ubuntu18/docker/docker-containerd-shim /usr/bin/docker-containerd-shim;
ln -s /docker/ubuntu18/docker/dockerd /usr/bin/dockerd;
ln -s  /engn/docker/ubuntu18/docker/docker-init /usr/bin/docker-init;
ln -s  /engn/docker/ubuntu18/docker/docker-proxy /usr/bin/docker-proxy;
ln -s  /engn/docker/ubuntu18/docker/docker-runc /usr/bin/docker-runc


docker -v
