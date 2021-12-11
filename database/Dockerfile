FROM ubuntu:18.04
#MAINTAINER 3ridevops:0.1

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install -y gnupg
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN  apt-get install gnupg -y
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN apt-get update -y
RUN apt-get install -y mongodb-org

CMD ["/usr/bin/mongodb", "--config", "/etc/mongod.conf"]
