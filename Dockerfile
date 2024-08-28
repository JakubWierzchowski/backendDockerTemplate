# Wybieramy obraz bazowy
FROM node:16

# Ustawiamy katalog roboczy w kontenerze
WORKDIR /app

# Kopiujemy pliki package.json oraz package-lock.json
COPY package*.json ./

# Instalujemy zależności
RUN npm install

COPY . .

ENV HOST 0.0.0.0

CMD ["node", "index.js"]

EXPOSE 3000

