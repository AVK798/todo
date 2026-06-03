FROM node:14
RUN mkdir /app
WORKDIR /app
COPY package.json server.js routes.js /app/
RUN npm install
CMD ["node", "server.js"]