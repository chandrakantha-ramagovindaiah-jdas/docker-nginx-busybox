FROM progrium/busybox

MAINTAINER Oliver Veits <oliver.veits@web.de>

RUN opkg-install nginx

RUN mkdir /var/lib/nginx
ADD nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /usr/share/nginx/html
ADD index.html /usr/share/nginx/html/index.html

WORKDIR /usr/share/nginx

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/nginx"]
