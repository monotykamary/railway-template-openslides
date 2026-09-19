FROM ghcr.io/openslides/openslides/openslides-icc:4.3.3@sha256:483264ed3ee32566d4f845e7b086a45728f49c67647b517c9cd7148894e1a9c0 AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-icc-service /openslides-icc-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-icc-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-icc-service"]
