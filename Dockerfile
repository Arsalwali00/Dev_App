# Use an official Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy the current directory (containing HTML, CSS, and JS files) to the working directory
COPY ./ /usr/share/nginx/html/

# Expose port 80 (the default port Nginx listens on)
EXPOSE 80

# Start Nginx server (entrypoint)
CMD ["nginx", "-g", "daemon off;"]
