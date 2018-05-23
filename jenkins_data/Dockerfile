FROM centos:7

ARG JENKINS_HOME=/var/jenkins_home

# Create the jenkins user
RUN useradd -d $JENKINS_HOME -u 1000 -m -s /bin/bash jenkins

# Create the folders and volume mount points
RUN mkdir -p $JENKINS_HOME
RUN chown -R jenkins:jenkins $JENKINS_HOME
#VOLUME $JENKINS_HOME

USER jenkins
CMD ["echo", "Data container for Jenkins"]
ENTRYPOINT ["tail", "-f", "/dev/null"]