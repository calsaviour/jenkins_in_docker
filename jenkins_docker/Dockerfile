#
# Jenkins image with ubuntu
#
# Pull base image.
FROM FROM centos:7
MAINTAINER Calvin Low "calsaviour@gmail.com"

ENV JENKINS_VERSION latest

RUN yum install java-1.8.0-openjdk.x86_64 -y && yum install wget -y  && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/$JENKINS_VERSION/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

VOLUME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
EXPOSE 52842
CMD [""]