# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the website files into the container
COPY src/ .

# Expose port 8090 to allow incoming HTTP traffic
EXPOSE 8090

# Start the nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
