# Use official Node.js base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy only package files first to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the backend source code
COPY . .

# Expose the port the app runs on (adjust if different)
EXPOSE 5000

# Command to start the server
CMD ["node", "server.js"]
