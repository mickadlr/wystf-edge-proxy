FROM caddy:2-alpine

# Render drops Linux capabilities; Caddy only needs this capability for ports below 1024.
RUN setcap -r /usr/bin/caddy

COPY Caddyfile /etc/caddy/Caddyfile
