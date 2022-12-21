FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
COPY . .
CMD [ "npm","run","dev","--","--host" ]