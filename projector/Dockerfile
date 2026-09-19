FROM ghcr.io/openslides/openslides/openslides-projector:4.3.3@sha256:70d4929f155e230ed9b3ee5b0acfed87f5c36714200c027dea549b8ae9254380
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-projector-service"]
CMD []
