FROM ghcr.io/openslides/openslides/openslides-media:4.3.6@sha256:4f7964405f8e3d0f9212760166fed194e8a8d842ef406023c7d7bd4c11af9a43
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
