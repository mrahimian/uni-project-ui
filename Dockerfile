# Use an official Node runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /react-docker-example/

# Copy the package.json and package-lock.json to the working directory
COPY public/ /react-docker-example/public
COPY src/ /react-docker-example/src
COPY package.json /react-docker-example/
COPY . .

# Install dependencies
RUN npm install

CMD ["npm", "start"]
