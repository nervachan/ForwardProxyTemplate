FROM ubuntu:22.04

# Install Squid and necessary utilities
RUN apt-get update && \
    apt-get install -y squid apache2-utils gettext && \
    rm -rf /var/lib/apt/lists/*

# Copy config template and entrypoint
COPY squid/squid.conf.template /etc/squid/squid.conf.template
COPY squid/entrypoint.sh /entrypoint.sh

# Make entrypoint executable
RUN chmod +x /entrypoint.sh

# Expose Squid default port
EXPOSE 3128

# Run the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
