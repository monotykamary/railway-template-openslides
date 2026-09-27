FROM ghcr.io/openslides/openslides/openslides-icc:4.3.4@sha256:cc86c3ec316fb2dbaad408d3d5250ad887b76d1fa20ae01eec4015dea6a8a122 AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-icc-service /openslides-icc-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-icc-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-icc-service"]
