# Jenkins Path
jenkins:x:1000:1000::/var/jenkins_home:/bin/bash


# Create a volume
sudo docker create -v /var/jenkins_home --name jenkins-dv jenkins/jenkins_docker

# Create a container with the volume
 sudo docker run -d -p 8080:8080 --volumes-from=jenkins-dv --name=myjenkins jenkins/jenkins_docker


# Installing vbguest for vagrant to share path with hotst
vagrant plugin install vagrant-vbguest
vagrant vbguest

# Command for using docker compose
1. docker-compose build
sudo docker-compose build --no-cache
2. docker-compose up -d
3. docker exec -t -i container_name /bin/bash

#Using docker command
1. docker build -t calsaviour/centos7_openjdk180:latest .
2. sudo docker run -p 8081:8081 -v /opt/jenkins/data:/jenkins --name=jenkins_test calsaviour/jenkins
3. sudo docker run -it -d  -p 8081:8081 -v /opt/jenkins/data:/jenkins --name=jenkins_test calsaviour/jenkins_docker
4. sudo docker run -it -d  -p 8081:8081 -v /opt/jenkins/data:/var/lib/jenkins --name=jenkins_test calsaviour/jenkins
5. sudo docker run -it -d  -p 8081:8081 -v /var/run/docker.sock:/var/run/docker.sock -v /opt/jenkins/data:/var/lib/jenkins --name=jenkins_test calsaviour/jenkins



#Using docker hub
1. docker up
2. docker login
3. docker push calsaviour/centos7_openjdk180