FROM node:18-alpine

WORKDIR /app

# Install dependencies first (cache layer)
COPY package*.json ./
RUN npm install

# Then copy rest
COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
