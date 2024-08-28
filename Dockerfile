
FROM node:16


WORKDIR /app


COPY package*.json ./


RUN npm install

COPY . .

ENV HOST 0.0.0.0

CMD ["node", "index.js"]

EXPOSE 3000

