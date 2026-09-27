FROM ghcr.io/openslides/openslides/openslides-vote:4.3.4@sha256:60e44be54a0706ef97853a6b3e606d66731dc7ee1cc95861d4a742b1e398726e AS upstream
FROM docker.io/library/alpine:3.24@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b
RUN apk add --no-cache ca-certificates
COPY --from=upstream /openslides-vote-service /openslides-vote-service
COPY secret-entrypoint.sh /railway-secret-entrypoint.sh
RUN chmod 0755 /railway-secret-entrypoint.sh /openslides-vote-service
ENTRYPOINT ["/railway-secret-entrypoint.sh","/openslides-vote-service"]
