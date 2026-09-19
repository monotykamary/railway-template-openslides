FROM ghcr.io/openslides/openslides/openslides-backend:4.3.3@sha256:25c7e250e4d7425da49d030b415483f11f3247c824fee6b8ead00d5268d59f0e
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
