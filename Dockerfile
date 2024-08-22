# Use the official Node.js image from the Docker Hub
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /ADO

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]
#INSTRUCTION args
