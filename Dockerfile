# Use a slim Node.js image as the base
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port Vite uses by default (can be customized in vite.config.js)
EXPOSE 3000

# Start the development server
CMD ["npm", "run", "dev", "--host"]
