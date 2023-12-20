FROM node:latest
WORKDIR /myapps
COPY package.json package-lock.json ./
ADD . /myapps/app
RUN npm install
CMD ["node", "index.js"]
