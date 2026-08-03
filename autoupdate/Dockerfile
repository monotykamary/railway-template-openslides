FROM ghcr.io/openslides/openslides/openslides-autoupdate:4.3.1@sha256:74c311ad325c01cc36603ca56ee940a1d96d31796b6479ccfe1cd7c50eabff44 AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-autoupdate-service /openslides-autoupdate-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-autoupdate-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-autoupdate-service"]
