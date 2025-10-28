FROM node:20.12-alpine

WORKDIR /app

COPY package.json package-lock ./

RUN npm ci --omit=dev

COPY src/ ./src/

CMD ["npm", "start"]