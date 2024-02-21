# Node.js base image
FROM node:20

# Add labels to the image
#LABEL version="latest"
#LABEL git_commit_hash=$GIT_COMMIT_HASH

# Set a build argument for the git commit hash
#ARG GIT_COMMIT_HASH

# Set the working directory
WORKDIR /royal-app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Set environment variable for the git commit hash
#ENV GIT_COMMIT_HASH=$GIT_COMMIT_HASH

# Expose the port(s) required by your application
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
