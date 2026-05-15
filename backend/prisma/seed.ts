import { PrismaClient } from '@prisma/client';
import bcrypt from 'bcrypt';

const prisma = new PrismaClient();

async function main() {
  const password_hash = await bcrypt.hash('Demo123!', 10);
  await prisma.user.upsert({
    where: { email: 'demo@example.com' },
    update: {},
    create: { email: 'demo@example.com', password_hash, nome: 'Usuário Demo' }
  });
}

main().finally(async () => prisma.$disconnect());
