FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["sh", "-c", "node server.js & node wake_up.js & wait"]
