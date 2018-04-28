FROM nginx:alpine

RUN addgroup -g 82 -S www-data \
	&& adduser -u 82 -D -S -G www-data www-data

COPY conf/nginx.conf /etc/nginx/nginx.conf

COPY conf/magento.conf /etc/nginx/conf.d/default.conf

# 82 is the standard uid/gid for "www-data" in Alpine
# http://git.alpinelinux.org/cgit/aports/tree/main/apache2/apache2.pre-install?h=v3.3.2
# http://git.alpinelinux.org/cgit/aports/tree/main/lighttpd/lighttpd.pre-install?h=v3.3.2
# http://git.alpinelinux.org/cgit/aports/tree/main/nginx-initscripts/nginx-initscripts.pre-install?h=v3.3.2

#USER lukas
