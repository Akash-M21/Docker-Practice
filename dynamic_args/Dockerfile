FROM node:18-alpine

ARG APP_ENV=dev

ENV NODE_ENV=$APP_ENV

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN echo "Running in $APP_ENV mode"

EXPOSE 3000

CMD ["node", "app.js"]
