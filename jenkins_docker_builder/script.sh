#!/bin/sh
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Staring installation of Java 1.8"
sudo yum install java-1.8.0-openjdk.x86_64
echo "Complete installation of Java 1.8"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"


echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Staring installation of Jenkins"
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
sudo firewall-cmd –zone=public –add-port=8080/tcp --permanent
sudo firewall-cmd –zone=public –add-service=http --permanent
echo "Complete installation of Jenkins"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

