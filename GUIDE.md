erros de import antes de compilar, foram resolvidos com: Ctrl+Shift+P Developer: Reload Window

criação do .env com a URL conexão do banco de dados (DATABASE_URL="mysql://user:pass@host:port/db_name")
prisma/schema.prisma definir nosso banco de dados (migrations por modelos do laravel)

instalar:
@prisma/client (biblioteca que efetivamente fará as migrações do banco)
pnpm add -D prisma (para rodar comandos prisma)

rodar:
pnpm exec prisma migrate dev (php artisan migrate; vai pedir para vc nomear a tabela, coloquei como: initial_migration)