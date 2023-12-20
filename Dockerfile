FROM node:latest
WORKDIR /myapps
COPY package.json package-lock.json ./
ADD src /myapps/app
RUN npm install
CMD ["node", "index.js"]
