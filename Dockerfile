FROM node:8.5.0 

WORKDIR /usr/src/node-service

# Install node packages
COPY package.json ./
RUN npm install

# Copy the source for the app
COPY . .

# Run the app
CMD ["npm", "start"]

# Expose container ports
EXPOSE 3000
