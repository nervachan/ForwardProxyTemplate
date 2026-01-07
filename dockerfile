FROM squid:latest

COPY squid/squid.conf.template /etc/squid/squid.conf.template
COPY squid/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 3128

ENTRYPOINT ["/entrypoint.sh"]