FROM ghcr.io/openslides/openslides/openslides-search:4.3.2@sha256:5840de2ab44358ea34b6cf914ad65f4213a4f7a74d45a8d197e07f12e3b515f5
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","./entrypoint.sh"]
CMD ["/bin/sh","-c","exec ./openslides-search-service"]
