# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Clone the Twitter clone repository from GitHub
RUN apk add --no-cache git \
    && git clone https://github.com/FortressTechnologiesInc/twitter-clone.git .

# Install dependencies
RUN npm install

# Build the React app
RUN npm run build

# Expose the port that the application will run on
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
