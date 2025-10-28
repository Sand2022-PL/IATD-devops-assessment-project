FROM node:20.12-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci
RUN npm ci

COPY src./ ./src/
COPY tests/ ./tests/
COPY eslint.config.mjs jest.config.mjs ./

CMD [ "npm", "test" ]