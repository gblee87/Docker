#!/bin/bash

docker run -d -p 8080:8080 -v /docker/jenkins:/var/jenkins_home -u root --name $1 jenkins
