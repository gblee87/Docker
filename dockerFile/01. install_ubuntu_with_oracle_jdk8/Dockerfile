FROM ubuntu
 
# File Maintainer
MAINTAINER gblee87
 
# Update the repository source list
RUN apt-get update;
 
# Install jdk8
RUN apt-get -y install software-properties-common && apt-add-repository -y ppa:webupd8team/java && apt update && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && apt install -y oracle-java8-installer
 
RUN echo "jdk 8  install completed"