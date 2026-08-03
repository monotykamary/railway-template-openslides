FROM ghcr.io/openslides/openslides/openslides-auth:4.3.1@sha256:c6820fc87e60f3060b7781f54d8586332ff81c702fde50e4e5604ab15d873cd6
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
