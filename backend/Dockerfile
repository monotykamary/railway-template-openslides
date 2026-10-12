FROM ghcr.io/openslides/openslides/openslides-backend:4.3.5@sha256:fe827ec4b0591f1a35886eb09c1863ba8975ebbb16ce8700b5892c2f5f220784
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
