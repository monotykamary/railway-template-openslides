FROM ghcr.io/openslides/openslides/openslides-projector:4.3.1@sha256:d30de90fc2f7c7fa51a8b4177a893dc4880e2974224fff5e985a4c336921dec2
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-projector-service"]
CMD []
