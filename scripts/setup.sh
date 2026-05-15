#!/usr/bin/env bash
set -euo pipefail
cp -n backend/.env.example backend/.env || true
cd backend
npm install
npm run prisma:generate
cd ../frontend-web
npm install
cd ../mobile-android
npm install || true
echo "Setup concluído"
