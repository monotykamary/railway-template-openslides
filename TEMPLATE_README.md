# Deploy and Host OpenSlides on Railway

## About Hosting OpenSlides

OpenSlides is a web platform for organizing meetings, agendas, motions, elections, participants, and projected content. This template deploys stable 4.3.1 using the complete official service architecture, a generated superadmin account, private PostgreSQL and Redis, and durable database storage.

Sign in as `superadmin` with `SUPERADMIN_PASSWORD` from the `backend-manage` service.

## Common Use Cases

- Digital assemblies and committee meetings
- Agenda, motion, and election management
- Live presentation and participant collaboration

## Dependencies for OpenSlides Hosting

### Deployment Dependencies

The template contains the official proxy, client, three backend roles, autoupdate, search, projector, authentication, voting, media, ICC, PostgreSQL, and Redis services. PostgreSQL has a persistent volume with daily backups. Railway terminates HTTPS.

### Implementation Details

All OpenSlides images are pinned to 4.3.1. Purpose-specific adapters materialize generated secrets as private files for services that require Docker-secret paths. Services communicate only over Railway private networking; the proxy is the sole public endpoint.

## Why Deploy OpenSlides on Railway?

Railway provides generated credentials, private networking, HTTPS, restart policies, persistent PostgreSQL storage, daily backups, and Git-driven updates for the full service graph.
