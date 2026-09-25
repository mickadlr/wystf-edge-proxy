# WYSTF edge proxy

This repository contains only the public edge proxy for `wystf.com`. The WYSTF
application and its data remain on the event laptop. Render terminates HTTPS for
the custom domain and this Caddy instance forwards requests to the laptop's
Tailscale Funnel endpoint.

The health endpoint at `/_edge/health` is served by the proxy itself. All other
paths are forwarded to the local application.

The Render free service can sleep after 15 minutes without inbound traffic. The
first request after that may take roughly one minute while the proxy starts.
