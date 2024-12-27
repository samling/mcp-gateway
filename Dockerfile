# Use an official Node.js image as the base
FROM node:23-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files (optional if you'd like to build/run an application)
COPY . .

ENV CONFIG_PATH=/usr/src/app/config.yaml

# Command to keep the container running
CMD ["npm", "start"]
