FROM haproxy:latest
RUN useradd haproxy
COPY files/haproxy.cfg.template /usr/local/etc/haproxy/haproxy.cfg.template
COPY files/run-haproxy.sh    /usr/bin/run-haproxy.sh
RUN  chmod +x /usr/bin/run-haproxy.sh;chown -R haproxy /usr/local/etc/haproxy
USER haproxy

CMD run-haproxy.sh
EXPOSE 3306 8888

