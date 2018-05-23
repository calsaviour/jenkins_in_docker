#
# Jenkins image with centos
#
# Pull base image.
FROM calsaviour/centos7_openjdk180
MAINTAINER Calvin Low "calsaviour@gmail.com"

RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

VOLUME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war", "--httpPort=8081"]
EXPOSE 8081
CMD [""]
