FROM ghcr.io/openslides/openslides/openslides-icc:4.3.5@sha256:38387797564c5cf743675d65c7f6827c73f96c7671775db71758713c40f3812c AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-icc-service /openslides-icc-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-icc-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-icc-service"]
