#!/bin/bash
echo "Starting the process"


containers=$(sudo docker ps -a | awk '{if(NR>1) print $1}')
echo $containers

if [[ -z $containers ]]; then
    echo "No containers are started yet"
   $(sudo docker create -v /var/jenkins_home --name jenkins-dv-calvin calsaviour/jenkins_data)
   jenkins_dv_calvin=$(sudo docker ps -a | awk '{if(NR>1} print $1')
   $(sudo docker start $jenkins_dv_calvin)
   
   dv="jenkins-dv-calvin"
   name="myjenkins-calvin"
   docker_container="calsaviour/jenkins_docker"
   $(sudo docker run -d -p 8081:8081 --volumes-from $dv --name $name $docker_container)
else
  for container in $containers
  do 
    echo "Starting container: $container"
    $(sudo docker start $container)
  done
fi
