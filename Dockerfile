# Estágio base com Node.js Alpine
FROM node:20-alpine AS base
WORKDIR /usr/src/app

# Atualiza o npm para a versão mais recente para corrigir vulnerabilidades internas
RUN npm install -g npm@latest

# Instala o pnpm globalmente
RUN npm install -g pnpm

# Estágio para instalar as dependências de produção
FROM base AS dependencies
COPY package.json pnpm-lock.yaml ./
# Usa o cache do pnpm para acelerar a instalação
RUN --mount=type=cache,target=/root/.pnpm/store pnpm fetch --prod
RUN pnpm install --prod --no-frozen-lockfile

# Estágio para construir a aplicação
FROM base AS builder
COPY . .
# Usa o cache do pnpm, instala todas as dependências (incluindo devDependencies) e roda os scripts
RUN --mount=type=cache,target=/root/.pnpm/store \
    pnpm install --no-frozen-lockfile && \
    pnpm prisma generate && \
    pnpm build

# Estágio final de produção, otimizado e menor
FROM base AS production
# Copia as dependências de produção já instaladas
COPY --from=dependencies /usr/src/app/node_modules ./node_modules
# Copia os artefatos da build
COPY --from=builder /usr/src/app/dist ./dist
# Copia a pasta do Prisma (necessária em tempo de execução)
COPY --from=builder /usr/src/app/prisma ./prisma

# Expõe a porta da aplicação
EXPOSE 3000

# Comando para iniciar a aplicação

CMD ["node", "dist/main.js"]