FROM ghcr.io/openslides/openslides/openslides-projector:4.3.5@sha256:b41dcd3c6e53e22fb6201194e50a2189bee9403cfd261761d1f7838688d5d7b5
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-projector-service"]
CMD []
