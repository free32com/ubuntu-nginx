# Base image
FROM ubuntu

# Install nginx
RUN apt-get update
RUN apt-get install -y nginx

# Replace files
RUN rm -f /etc/nginx/site-enabled/default
COPY default /etc/nginx/site-enabled/default
RUN rm -f /var/www/html/index.nginx-debian.html
COPY 33.txt /var/www/html/33.txt

#
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]

