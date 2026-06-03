FROM node
RUN mkdir /app
WORKDIR /app
COPY package.json server.js /app/
RUN npm install
RUN npm run  build
CMD ["node", "server.js"]