# Base image
FROM ubuntu:20.04

# Install nginx
RUN apt-get update
RUN apt-get install -y nginx

# Replace files
RUN rm -f /etc/nginx/site-enabled/default
COPY default /etc/nginx/site-enabled/default
RUN rm -f /var/www/html/index.nginx-debian.html
COPY index.html /var/www/html/index.html

#
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]

