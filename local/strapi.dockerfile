FROM node:20

WORKDIR /usr/app

COPY package*.json ./

RUN npm ci

COPY . .

CMD ["npm", "run", "develop"]

