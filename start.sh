#!/usr/bin/env bash
# Lanza MCP en modo Postgres

if [ -z "$PG_CONN" ]; then
  echo "Error: falta la variable PG_CONN con la cadena de conexión."
  exit 1
fi

npx -y @modelcontextprotocol/server-postgres "$PG_CONN"
