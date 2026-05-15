#!/usr/bin/env bash
set -euo pipefail

if [ ! -f "./scripts/start.sh" ]; then
  echo "❌ Arquivo ./scripts/start.sh não encontrado neste diretório."
  exit 1
fi

exec bash ./scripts/start.sh
