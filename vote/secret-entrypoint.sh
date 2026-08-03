#!/bin/sh
set -eu
secret_dir=/tmp/openslides-secrets
mkdir -p "$secret_dir"
chmod 700 "$secret_dir"
write_secret() {
  name=$1
  eval "value=\${$2:-}"
  [ -z "$value" ] || { printf '%s' "$value" >"$secret_dir/$name"; chmod 600 "$secret_dir/$name"; }
}
write_secret auth_token_key AUTH_TOKEN_KEY
write_secret auth_cookie_key AUTH_COOKIE_KEY
write_secret internal_auth_password INTERNAL_AUTH_PASSWORD
write_secret postgres_password POSTGRES_PASSWORD
write_secret superadmin SUPERADMIN_PASSWORD
export AUTH_TOKEN_KEY_FILE="$secret_dir/auth_token_key"
export AUTH_COOKIE_KEY_FILE="$secret_dir/auth_cookie_key"
export INTERNAL_AUTH_PASSWORD_FILE="$secret_dir/internal_auth_password"
export DATABASE_PASSWORD_FILE="$secret_dir/postgres_password"
export MEDIA_DATABASE_PASSWORD_FILE="$secret_dir/postgres_password"
export VOTE_DATABASE_PASSWORD_FILE="$secret_dir/postgres_password"
export SUPERADMIN_PASSWORD_FILE="$secret_dir/superadmin"
target=$1
shift
exec "$target" "$@"
