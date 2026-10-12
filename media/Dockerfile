FROM ghcr.io/openslides/openslides/openslides-media:4.3.5@sha256:4b5d51129bdb183422a18580249dbeb0ab34ff1f0a7e66a9ad8bd052e604d019
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
