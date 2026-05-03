FROM node:18-alpine

# Install nginx
RUN apk add --no-cache nginx

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD sh -c "node app.js & nginx -g 'daemon off;'"
