FROM ghcr.io/openslides/openslides/openslides-backend:4.3.2@sha256:ad71588e8e5116464902e5d47a9b86127da69b47f9dadbec49050a5e73bc1b01
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
USER appuser
ENTRYPOINT ["/railway-secret-entrypoint.sh","/app/entrypoint.sh"]
CMD ["./command.sh"]
