FROM ghcr.io/openslides/openslides/openslides-search:4.3.6@sha256:d83ed4bb182c4844abfe16a2b211ec698f76aa74c676838c0da7f5cb498e1709
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","./entrypoint.sh"]
CMD ["/bin/sh","-c","exec ./openslides-search-service"]
