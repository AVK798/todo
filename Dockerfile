FROM node:14
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "server.js"]