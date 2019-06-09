FROM golang:alpine
ENTRYPOINT ["/entrypoint.sh"]
RUN apk add git && mkdir /data
VOLUME ["/data"]
EXPOSE 5000
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
