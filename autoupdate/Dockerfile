FROM ghcr.io/openslides/openslides/openslides-autoupdate:4.3.2@sha256:c7dceb92c9e8f8b97df3930bc399ab42706b66c42fb9439c2f4f97ef4933970c AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-autoupdate-service /openslides-autoupdate-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-autoupdate-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-autoupdate-service"]
