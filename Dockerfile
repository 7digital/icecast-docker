FROM alpine:3.7
RUN apk update && apk add mailcap icecast
VOLUME [ "/var/log/icecast2", "/etc/icecast2" ]
EXPOSE 8000
ENTRYPOINT [ "icecast", "-c", "/etc/icecast2/icecast.xml" ]
