FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production

COPY . .

EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=5s \
  CMD wget -qO- http://localhost:3000 || exit 1

CMD ["node", "app.js"]
