# Use Nginx base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy the entire project into the container's Nginx directory
COPY ./ /usr/share/nginx/html/

# Expose port 80 for the Nginx web server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
