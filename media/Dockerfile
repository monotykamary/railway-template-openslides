FROM ghcr.io/openslides/openslides/openslides-media:4.3.2@sha256:a7cd67b50d0a6ffe8877886a38ec99248804b4f346605cd136a674d9277ad20d
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
