FROM centos:7
MAINTAINER Calvin Low <calsaviour@gmail.com>

ADD . /code
WORKDIR /code
RUN ["./script.sh"]
ENTRYPOINT ["/bin/bash", "-c", "Welcome, you have login to the jenkins container"]