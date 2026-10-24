FROM ghcr.io/openslides/openslides/openslides-auth:4.3.6@sha256:c805aa656f5b06d7a6e6da3bd547fea4b1f8e47c716daa603fe2eea03f7736fc
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
