FROM ubuntu
#MAINTAINER 3riDEVOPS:0.1

RUN apt-get update -y && apt-get install -y software-properties-common python
RUN apt-get install -y nodejs
RUN mkdir /var/www

COPY main.js /var/www/main.js
CMD ["/usr/bin/node", "/var/www/main.js"]
