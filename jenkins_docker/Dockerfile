#
# Jenkins image with centos
#
# Pull base image.
FROM calsaviour/centos7_openjdk180
MAINTAINER Calvin Low "calsaviour@gmail.com"

ARG JENKINS_HOME=/var/jenkins_home
ARG http_port=8081

ENV JENKINS_HOME $JENKINS_HOME
VOLUME $JENKINS_HOME

# Create the jenkins user
RUN useradd -d $JENKINS_HOME -u 1000 -m -s /bin/bash jenkins
RUN chown -R jenkins:jenkins $JENKINS_HOME
RUN chmod 644 /opt/jenkins.war
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war", "--httpPort=8081"]
EXPOSE ${http_port}
CMD [""]
