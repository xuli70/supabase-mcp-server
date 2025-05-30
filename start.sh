#!/usr/bin/env bash
# Script de arranque para MCP Postgres

if [ -z "$PG_CONN" ]; then
  echo "Error: falta la variable PG_CONN con la cadena de conexión." >&2
  exit 1
fi

npx -y @modelcontextprotocol/server-postgres "$PG_CONN"
