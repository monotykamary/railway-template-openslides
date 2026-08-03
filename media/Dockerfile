FROM ghcr.io/openslides/openslides/openslides-media:4.3.1@sha256:7d43c2e13a4c4f3a799b6ba55b15d9177eb1c8c47441586d61383559c84d949f
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
