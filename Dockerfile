FROM ubuntu
MAINTAINER kachallah (kachallaha@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/kachallah/webapp.git  /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

