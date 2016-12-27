FROM alpine
MAINTAINER support@tutum.co

RUN apk --update add logrotate
RUN echo "*/30 *	* * *	/usr/sbin/logrotate /etc/logrotate.conf" >> /etc/crontabs/root
ADD logrotate.conf /etc/logrotate.conf

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["crond", "-f"]
