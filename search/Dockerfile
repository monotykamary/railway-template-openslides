FROM ghcr.io/openslides/openslides/openslides-search:4.3.5@sha256:262705a8ef83f872be359d419ed0831489355c4786bb9f6303426351e70ae041
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
USER root
RUN chmod 0755 /railway-secret-entrypoint.sh
ENTRYPOINT ["/railway-secret-entrypoint.sh","./entrypoint.sh"]
CMD ["/bin/sh","-c","exec ./openslides-search-service"]
