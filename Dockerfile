# Use an official Nginx image as the base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy your HTML, CSS, and JS files into the working directory
COPY ./ /usr/share/nginx/html/

# Expose port 80 to access the web server
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
