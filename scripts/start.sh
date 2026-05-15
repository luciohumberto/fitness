#!/usr/bin/env bash
set -euo pipefail

echo "🚀 Iniciando bootstrap..."

if ! command -v docker >/dev/null 2>&1; then
  echo "❌ Docker não encontrado."
  exit 1
fi

echo "[1/4] Subindo containers..."
docker compose up -d --build

echo "[2/4] Aguardando backend..."
READY=0
for i in {1..90}; do
  if curl -sf http://localhost:3000/health >/dev/null; then
    READY=1
    break
  fi
  sleep 2
done

if [ "$READY" -ne 1 ]; then
  echo "❌ Backend não respondeu em até 180s."
  docker compose logs --no-color
  exit 1
fi

echo "[3/4] Seed..."
docker compose exec -T backend npm run seed || true

echo "[4/4] ✅ Sistema pronto"
echo "Web: http://localhost:5173"
echo "API: http://localhost:3000/health"
echo "Demo: demo@example.com / Demo123!"
