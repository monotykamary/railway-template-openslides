FROM ghcr.io/openslides/openslides/openslides-auth:4.3.2@sha256:5dfba67e433c87ffb9436f52547751722d3476616950dedbe706f2289d41677e
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
