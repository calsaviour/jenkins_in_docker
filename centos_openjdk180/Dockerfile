#
# Jenkins image with centos
#
# Pull base image.
FROM centos:7
MAINTAINER Calvin Low "calsaviour@gmail.com"
RUN yum install java-1.8.0-openjdk.x86_64 -y

ENV JENKINS_VERSION 2.124
COPY jenkins.war /opt/jenkins.war

RUN yum -y install git