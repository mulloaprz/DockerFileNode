# app / usr / lib
FROM node:19.2.0-alpine3.17

# cd app
WORKDIR /app 

# Copy dependencies file
COPY package.json ./

# Install las dependencias
RUN npm install

# Dest /app
COPY . .

# Testing
RUN npm run test

# Remove unnecesary files for prod
RUN rm -rf tests && rm -rf node_modules

# Install only production dependencies
RUN npm install --prod

CMD [ "node", "app.js" ] 