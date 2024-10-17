# app / usr / lib
FROM node:19.2.0-alpine3.17

# cd app
WORKDIR /app 

# Dest /app
COPY app.js package.json ./

RUN npm install

CMD [ "node", "app.js" ] 