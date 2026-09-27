FROM ghcr.io/openslides/openslides/openslides-media:4.3.4@sha256:347e5021ad49d642e92a154f69707f289ff8b88606fff1d5b5e29ea0be6bf363
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
