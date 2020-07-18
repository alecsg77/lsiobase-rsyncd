FROM lsiobase/alpine:3.12

RUN apk add --no-cache rsync

COPY rsyncd.conf /etc/

VOLUME /data
EXPOSE 873

CMD rsync --daemon --no-detach --log-file /dev/stdout