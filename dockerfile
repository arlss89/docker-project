# Use a base image
FROM nginx:latest

# Copy the index.html file to the nginx HTML directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to the host
EXPOSE 80