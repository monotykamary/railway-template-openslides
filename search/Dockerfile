FROM ghcr.io/openslides/openslides/openslides-search:4.3.3@sha256:6b74ac94f566f0b49e184651235f627247ad762939e429e12b7b2cad89b98d27
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","./entrypoint.sh"]
CMD ["/bin/sh","-c","exec ./openslides-search-service"]
