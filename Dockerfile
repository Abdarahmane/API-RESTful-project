
FROM node:14


WORKDIR /app


COPY package*.json ./


RUN npm install


COPY . .

EXPOSE 3000


RUN npm install -g nodemon

CMD ["nodemon", "src/app.js"]
