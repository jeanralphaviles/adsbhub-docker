FROM alpine:latest

RUN apk add --no-cache socat

ENTRYPOINT ["socat"]
CMD ["-d", "-d", "-u", "TCP:dump1090:30002", "TCP:data.adsbhub.org:5001"]
