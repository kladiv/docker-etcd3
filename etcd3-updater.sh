#!/bin/sh
echo `etcdctl member list | grep ${ETCD_NAME} | awk -v url="${ETCD_INITIAL_ADVERTISE_PEER_URLS}" -F',' '{print "etcdctl member update "$1" --peer-urls="url}'` | sh
