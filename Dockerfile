# Use the official nginx image as the base image
FROM nginx

# Set the working directory to /src
WORKDIR /app

# Copy the current directory contents into the container at /src
COPY . /app

# Copy the default nginx.conf file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the Vite /dist folder to the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]

# Run `node index.ts` when the container launches
CMD ["node", "index.ts"]
