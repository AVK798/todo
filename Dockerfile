FROM node
RUN mkdir /app
WORKDIR /app
COPY package.json server.js /appp/
RUN npm install
CMD ["node", "server.js"]