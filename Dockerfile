# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port that your app will run on (default is 3000)
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]

