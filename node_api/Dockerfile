# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY app/package.json .

# Install app dependencies
RUN npm install

# Copy the rest of the local files in the app folder
COPY app/ .

# Expose port 3001 to the outside world
EXPOSE 3001

# Command to run the application
CMD ["node", "index.js"]