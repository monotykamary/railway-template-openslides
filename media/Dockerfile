FROM ghcr.io/openslides/openslides/openslides-media:4.3.3@sha256:1456c2e6c6a1ac0a3d5079a692b28e6de5a04b78bd2e703ee85b93b0dad2287f
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
