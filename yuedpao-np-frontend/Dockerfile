FROM node:18 AS build

WORKDIR /app
COPY package.json package-lock.json ./
RUN cd /app
RUN npm install
COPY . .
CMD ["npm", "run", "dev"]