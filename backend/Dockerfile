FROM ghcr.io/openslides/openslides/openslides-backend:4.3.6@sha256:f9df5da5495818d9a99182577150df03fd62470af2f87b37422c3bb79d564766
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
