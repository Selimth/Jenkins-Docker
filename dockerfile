# Use an Nginx base image
FROM nginx:latest

# Copy website files into the default Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
