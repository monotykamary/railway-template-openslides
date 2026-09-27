FROM ghcr.io/openslides/openslides/openslides-backend:4.3.4@sha256:b648fdc0613bc45473e7c1eef5f225015cc3db9e9cfbed2db23670263960debf
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
