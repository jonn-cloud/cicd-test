FROM node:16

WORKDIR /app

COPY package.json .

RUN git submodule update --init --remote

RUN npm install

COPY . .

EXPOSE 8080 

CMD ["node", "index.js"]