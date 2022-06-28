FROM alpine

MAINTAINER ve4kkk

RUN apk update && apk add transmission-daemon wireguard-tools

EXPOSE 9091

COPY start.sh /start.sh
RUN [ "chmod", "+x", "/start.sh" ]
RUN [ "mkdir", "-p", "/etc/transmission" ]
COPY settings.json /etc/transmission/settings.json
ENTRYPOINT [ "/start.sh" ]
