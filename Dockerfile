# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory to /src
WORKDIR /app

# Copy the current directory contents into the container at /src
COPY . /app

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run `node index.ts` when the container launches
CMD ["node", "index.ts"]
