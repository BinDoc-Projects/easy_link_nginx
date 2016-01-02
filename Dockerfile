FROM nginx

MAINTAINER Markus Heider <markus.heider@bindoc.de>

#RUN apt-get update && apt-get install -y nano htop git nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY app.conf /etc/nginx/sites-enabled/app.conf
ADD nginx-startup.sh /etc/nginx/nginx-startup.sh

EXPOSE 80

CMD ["/bin/bash","/etc/nginx/nginx-startup.sh"]

