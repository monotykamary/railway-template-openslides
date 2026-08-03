FROM ghcr.io/openslides/openslides/openslides-backend:4.3.1@sha256:a54935a60b455b9028edf26b4f5d59158d2af5ba940abbe5191caa4ff7025a4d
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
