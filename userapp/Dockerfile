FROM node:18-alpine

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production

COPY . .

# Switch to non-root
USER appuser

EXPOSE 3000

CMD ["node", "app.js"]

