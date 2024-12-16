#Stage 1 - Multi stage docker file
FROM node:18-slim AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
#Stage 2
FROM node:18-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app .
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "app.js"]
