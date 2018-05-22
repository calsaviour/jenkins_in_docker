#
# Jenkins image with centos
#
# Pull base image.
FROM FROM centos:7
MAINTAINER Calvin Low "calsaviour@gmail.com"

ENV JENKINS_VERSION latest

RUN yum install java-1.8.0-openjdk.x86_64 -y
ADD http://mirrors.jenkins-ci.org/war/$JENKINS_VERSION/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

VOLUME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war", "--httpPort=8081"]
EXPOSE 8081
CMD [""]