FROM ghcr.io/openslides/openslides/openslides-projector:4.3.2@sha256:968722caf61f73b1ac35da138e139f1eba755acd2e9edd49b0c431c4186fea79
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-projector-service"]
CMD []
