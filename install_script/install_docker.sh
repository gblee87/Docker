#!/bin/bash

# install docker
sudo yum update -y;
sudo yum install -y docker;
sudo service docker start;
sudo usermod -aG docker ec2-user;
sudo service docker restart;

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose;
sudo chmod -x /usr/local/bin/docker-compose;
