FROM ghcr.io/openslides/openslides/openslides-vote:4.3.3@sha256:028f6a57c727554a4caaacb1aa2508d6eb02a18f90b735296502a6d27c750b67 AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-vote-service /openslides-vote-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-vote-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-vote-service"]
