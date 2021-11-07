FROM node:12

WORKDIR /app        

COPY packages*.json ./

RUN npm install

RUN npm i express ejs socket.io uuid peer

COPY . /app

CMD ["node","server.js"]

EXPOSE 3090