FROM ghcr.io/openslides/openslides/openslides-auth:4.3.5@sha256:5aeae0a347bb18c651d18ec029755a85b65fc3092a0b959765169cf255681d79
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
