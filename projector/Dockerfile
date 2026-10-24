FROM ghcr.io/openslides/openslides/openslides-projector:4.3.6@sha256:013d60fc3dbab52c386c9db77d94c45a58b9f73f1a162db836293ce27b2f927c
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-projector-service"]
CMD []
