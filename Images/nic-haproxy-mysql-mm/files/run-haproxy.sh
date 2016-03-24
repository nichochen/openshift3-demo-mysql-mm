#!/bin/bash

set -eu

HAPROXY_DIR="/usr/local/etc/haproxy/"

cp -v  ${HAPROXY_DIR}/haproxy.cfg.template  ${HAPROXY_DIR}/haproxy.cfg
echo "    server mysql-1 ${MYSQL_MASTER_A_SERVICE_HOST}:3306 weight 1 check  inter 1s rise 2 fall 2" >>  ${HAPROXY_DIR}/haproxy.cfg
echo "    server mysql-2 ${MYSQL_MASTER_B_SERVICE_HOST}:3306 weight 1 check  inter 1s rise 2 fall 2" >>  ${HAPROXY_DIR}/haproxy.cfg
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
