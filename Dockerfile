FROM nginx
ORIGINAL MAINTAINER Gary Louis Stewart
EDITED by Nestor Chan
COPY nginx.conf /etc/nginx/nginx.conf

ADD src/ /var/www

EXPOSE 8181

