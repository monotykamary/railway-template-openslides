FROM ghcr.io/openslides/openslides/openslides-search:4.3.1@sha256:a53ed33779e53a8793b489a317d4f96c5ce898768fcf6e61473c15b0241fe255
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","./entrypoint.sh"]
CMD ["/bin/sh","-c","exec ./openslides-search-service"]
