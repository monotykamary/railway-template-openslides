FROM ghcr.io/openslides/openslides/openslides-projector:4.3.4@sha256:d6abbdac5b59b5d49e0b62129ff99555a5c75013a0648ac5cd714b9047c45cf0
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-projector-service"]
CMD []
