#!/usr/bin/env bash
set -euo pipefail
cd backend
npm run prisma:migrate
npm run seed
