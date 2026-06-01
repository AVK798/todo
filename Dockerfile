FROM node
RUN mkdir /app
WORKDIR /app
COPY package.json server.js /app/
RUN npm install
CMD ["node", "server.js"]