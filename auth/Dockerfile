FROM ghcr.io/openslides/openslides/openslides-auth:4.3.4@sha256:2e4e48341e91a11ac53b8175666995e66b62b9f9aa2c42a7a4a0daf4488ff0a0
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
