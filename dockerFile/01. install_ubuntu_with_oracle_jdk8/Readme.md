Dockerfile
==========

Ubuntu with oracle jdk8
-----------------------

### step of docker file
  
  
> ##### step01. <pre><code>FROM Ubuntu</code></pre> get the image from central repository
 
> ##### setp02. <pre><code>Maintainer</pre></code> is just describe user name who make this file

> ##### step03. <pre><code>RUN apt-get update;</pre></code> command means ubuntu package manager update

> ##### step04. <pre><code>RUN apt-get -y install software-properties-common && apt-add-repository -y ppa:webupd8team/java && apt update && echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && apt install -y oracle-java8-installer</pre></code>   means install another repository to install oracle jdk and install oracle jdk8
 
> ##### step05. <pre><code>RUN echo "jdk 8  install completed"</pre></code> means print message in ubuntu


### step of run container 
> #### step01. you have to find image id which installed local.
               <pre><code>docker images </code></pre>
> #### step02. run container with port 8080 open (it used port forward for tomcat)
               <pre><code>docker run {Image ID} -name tomcat_01  -p 8080:8080 -it /bin/bash
