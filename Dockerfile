# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY ["package*.json", "tsconfig.json", ".env", "./"]

COPY ./src ./src

# Install project dependencies
RUN npm install

# Expose the port your application will run on
EXPOSE 4000

# Define the command to run your application
CMD ["npm", "run", "dev"]