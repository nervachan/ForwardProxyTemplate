#!/bin/sh
# Replace variables in template and generate actual config
envsubst < /etc/squid/squid.conf.template > /etc/squid/squid.conf

# Start Squid in foreground
exec squid -N -f /etc/squid/squid.conf
