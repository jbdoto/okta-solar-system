FROM node:14.1-alpine

WORKDIR /opt/web
COPY package.json package-lock.json ./
RUN npm install

ENV PATH="./node_modules/.bin:$PATH"

COPY . ./
ENV PORT=8080
CMD npm start  --port 8080