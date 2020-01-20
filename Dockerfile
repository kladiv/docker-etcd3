FROM quay.io/coreos/etcd:latest
LABEL maintainer="claudio.mastrapasqua@gmail.com"
RUN apk update && apk add --no-cache ca-certificates supervisor
COPY supervisord.conf /etc/supervisord.conf
COPY etcd3-updater.sh /usr/local/bin/etcd3-updater.sh
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
