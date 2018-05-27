FROM ubuntu
 
# File Maintainer
MAINTAINER gblee87
 
# Update the repository source list
RUN apt-get update;
 
# Install jdk8
RUN apt-get -y install software-properties-common && apt-add-repository -y ppa:webupd8team/java && apt update && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && apt install -y oracle-java8-installer
 
RUN echo "jdk 8  install completed"

# vim install
RUN apt-get install -y vim

# install tomcat 8.5 manually
RUN mkdir -P /engn001/tomcat && cd /engn001/tomcat && tar xvf ./apache-tomcat-8.5.31.tar.gz && wget http://apache.tt.co.kr/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz && tar xvf ./apache-tomcat-8.5.31.tar.gz && mv ./apache-tomcat-8.5.31 ./8.5 && sh /engn001/tomcat/8.5/bin/startup.sh