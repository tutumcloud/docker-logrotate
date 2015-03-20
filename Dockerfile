FROM ubuntu:trusty
MAINTAINER info@tutum.co

RUN apt-get update && apt-get install -yq logrotate && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN echo "*/5 * * * * root /usr/sbin/logrotate /etc/logrotate.conf" >> /etc/crontab
ADD logrotate.conf /etc/logrotate.conf

CMD ["cron", "-f"]
