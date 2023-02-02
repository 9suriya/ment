FROM nginx:stable
COPY docker-configs/nginx.conf /etc/nginx/
#COPY docker-configs/test.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/html
WORKDIR /var/www/html/
COPY ./html/* /usr/share/nginx/html/
EXPOSE 80
