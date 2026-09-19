FROM ghcr.io/openslides/openslides/openslides-auth:4.3.3@sha256:4be9cc01c6629e3916ed4cc477fbbd9f7546402f003ab234a7eb3686a831e70e
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
