FROM nginx
MAINTAINER Gary Louis Stewart
COPY nginx.conf /etc/nginx/nginx.conf

ADD src/ /var/www

EXPOSE 8181

