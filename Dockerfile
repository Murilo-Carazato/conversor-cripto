# --- Base Stage ---
# Define uma imagem base leve e segura para Node.js
FROM node:20-alpine AS base
WORKDIR /usr/src/app

# <<< ADICIONE ESTA LINHA AQUI >>>
# Instala o pnpm globalmente para que possa ser usado nos estágios seguintes
# hadolint ignore=DL3016
RUN npm install -g pnpm

# --- Dependencies Stage ---
# Prepara e instala apenas as dependências de produção para otimizar o cache
FROM base AS dependencies
COPY package.json pnpm-lock.yaml ./
# hadolint ignore=DL3016
RUN --mount=type=cache,target=/root/.pnpm/store pnpm fetch --prod
RUN pnpm install --prod --no-frozen-lockfile

# --- Builder Stage ---
# Instala todas as dependências (incluindo as de desenvolvimento) e constrói a aplicação
FROM base AS builder
COPY . .
# hadolint ignore=DL3016
# Consolida múltiplos comandos em um único RUN para reduzir as camadas da imagem (corrige DL3059)
RUN --mount=type=cache,target=/root/.pnpm/store \
    pnpm install --no-frozen-lockfile && \
    pnpm prisma generate && \
    pnpm build

# --- Production Stage ---
# Monta a imagem final, copiando apenas os artefatos necessários das etapas anteriores
FROM base AS production
COPY --from=dependencies /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/dist ./dist
# Copia o schema do Prisma, necessário em tempo de execução
COPY --from=builder /usr/src/app/prisma ./prisma

# Expõe a porta que a aplicação usará
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "dist/main.js"]