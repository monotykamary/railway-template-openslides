FROM ghcr.io/openslides/openslides/openslides-icc:4.3.2@sha256:5db92f84d6cb90786eb4e765c6fa272df19340865c16a654ab4b3b9493a5dda7 AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-icc-service /openslides-icc-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-icc-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-icc-service"]
