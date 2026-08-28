FROM ghcr.io/openslides/openslides/openslides-vote:4.3.2@sha256:a0533d41d8c145225e662fe820c1ab39bbe791701ad178d692ceeda5c799aaec AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-vote-service /openslides-vote-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-vote-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-vote-service"]
