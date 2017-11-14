FROM centos
USER root
#RUN yum update && yum install -y sudo
COPY jdk-8u152-linux-x64.rpm /root/jdk.rpm
RUN rpm -ivh /root/jdk.rpm
COPY apache-maven-3.0.5-bin.tar.gz /root/apache-maven-3.0.5-bin.tar.gz
RUN cd /root && tar -xvzf apache-maven-3.0.5-bin.tar.gz
ENV PATH=$PATH:/root/apache-maven-3.0.5/bin
ENV JAVA_HOME=/usr/java/jdk1.8.0_152
RUN yum install -y git
RUN cd /root && git clone https://github.com/bluewhaleio/utils.git
RUN cd /root/utils && mvn clean install
