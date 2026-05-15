# Fitness Ataxia App

Monorepo scaffold para sistema completo de fitness inteligente com foco em hipertrofia adaptada para ataxia cerebelar.

## Estrutura
- `backend/` API Node.js + TypeScript + Express + Prisma + PostgreSQL + Redis + Socket.io
- `frontend-web/` React + Vite + Redux Toolkit + RTK Query + Material UI
- `mobile-android/` React Native + Redux Toolkit + Navigation
- `shared/` contratos e tipos compartilhados
- `docs/` documentação de arquitetura e domínio
- `scripts/` automação local e deploy

## Quickstart
```bash
./scripts/setup.sh
./scripts/seed.sh
docker compose up --build
```

Usuário demo:
- email: `demo@example.com`
- senha: `Demo123!`
