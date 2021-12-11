FROM ubuntu:16.04
#MAINTAINER 3RIDEVOPS: 0.1

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -fr /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG /var/log/apache2

EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
