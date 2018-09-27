mkdir -p /engn/docker/ubuntu18 && cd /engn/docker/ubuntu18;
wget https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz;
tar xvf ./docker-18.06.l-ce.tgz;
rm /usr/bin/docker && ln -s /engn/docker/ubuntu18/docker /usr/bin/docker;
docker -v
