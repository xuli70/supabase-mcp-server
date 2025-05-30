#!/usr/bin/env bash
# Script de arranque para MCP Server de Supabase

# Asegúrate de que la variable SUPABASE_ACCESS_TOKEN está definida en el entorno
if [ -z "$SUPABASE_ACCESS_TOKEN" ]; then
  echo "Error: SUPABASE_ACCESS_TOKEN no está definido."
  exit 1
fi

# Lanza el servidor
npx -y @supabase/mcp-server-supabase@latest --access-token "$SUPABASE_ACCESS_TOKEN"
