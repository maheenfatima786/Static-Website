# Use a lightweight web server image as the base image
FROM nginx:alpine

# Copy the website files to the appropriate directory
COPY . /usr/share/nginx/html

# Expose port 80 for incoming HTTP traffic
EXPOSE 8080

# Start the web server when the container starts
CMD ["nginx", "-g", "daemon off;"]
