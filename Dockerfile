FROM alpine

RUN apk add --update rsyslog && \
    rm -rf /var/cache/apk/*

EXPOSE 514 514/udp

ENTRYPOINT rsyslogd -n