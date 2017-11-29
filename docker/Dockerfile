FROM alpine:3.4
RUN apk update && apk add mailcap icecast
VOLUME [ "/var/log/icecast2", "/etc/icecast2" ]
COPY /etc /etc
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 755 /docker-entrypoint.sh
EXPOSE 8000
ENTRYPOINT ["/docker-entrypoint.sh"]
