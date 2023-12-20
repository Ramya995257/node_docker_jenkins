FROM node:latest
WORKDIR /myapps
COPY package.json package-lock.json ./
ADD ..
RUN npm install
CMD ["node", "index.js"]
