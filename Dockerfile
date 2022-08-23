FROM node:16

WORKDIR /app

COPY package.json .

# RUN git submodule add git@github.com:jonn-cloud/workflow-test.git

# RUN git submodule update --recursive

RUN npm install

COPY . .

EXPOSE 8080 

CMD ["node", "index.js"]