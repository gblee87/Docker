Dockerfile
==========

Ubuntu with oracle jdk8
-----------------------

  step of docker file
  ===================
  
  #####step01. get the image from central repository
  
  #####setp02. Maintainer is just describe user name who make this file

  #####step03. "RUN apt-get update;" command means ubuntu package manager update

  #####step04. "RUN apt-get -y install software-properties-common && apt-add-repository -y ppa:webupd8team/java && apt update && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && apt install -y oracle-java8-installer"   means install another repository to install oracle jdk and install oracle jdk8
 
  #####step05. "RUN echo 'jdk 8  install completed'" means print message in ubuntu