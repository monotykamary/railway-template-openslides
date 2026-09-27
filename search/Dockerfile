FROM ghcr.io/openslides/openslides/openslides-search:4.3.4@sha256:09fa18a1d40c3701d3161a801bc3ff16517e2ed9e2e243e56e4c299f9fcda3ce
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","./entrypoint.sh"]
CMD ["/bin/sh","-c","exec ./openslides-search-service"]
