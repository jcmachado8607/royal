# Node.js base image
FROM node:20

# Set the working directory
WORKDIR /royal-app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port required by your application
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
