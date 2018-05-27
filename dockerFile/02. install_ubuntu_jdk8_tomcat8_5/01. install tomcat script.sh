#!/bin/bash
mkdir -P /engn001/tomcat
cd /engn001/tomcat
tar xvf ./apache-tomcat-8.5.31.tar.gz
wget http://apache.tt.co.kr/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
tar xvf ./apache-tomcat-8.5.31.tar.gz
mv ./apache-tomcat-8.5.31 ./8.5
sh /engn001/tomcat/8.5/bin/startup.sh