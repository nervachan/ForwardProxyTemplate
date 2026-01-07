#!/bin/sh
envsubst < /squid/squid.conf.template > /squid/squid.conf
exec squid -N -f /squid/squid.conf