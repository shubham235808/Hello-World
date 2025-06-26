# Use the official NGINX image from Docker Hub
FROM quay.io/redhattraining/helloworld-nginx:latest

# Copy a custom HTML file into the NGINX server
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the NGINX container
EXPOSE 8080

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
