FROM ghcr.io/openslides/openslides/openslides-icc:4.3.6@sha256:6f1154a2b2949b1d6ac3acc81f5c35c2cd12f9e3b78b7be7651f458a210f15ff AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-icc-service /openslides-icc-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-icc-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-icc-service"]
