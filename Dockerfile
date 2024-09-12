# Use the official Nginx image as the base
FROM nginx:latest

# Maintainer label
LABEL maintainer="your-email@example.com"

# Remove the default Nginx page (optional, if you want to fully replace it)
RUN rm -rf /usr/share/nginx/html/*

# Copy custom content to the Nginx web directory
COPY ./index.html /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
