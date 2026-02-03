# Use the lightweight Nginx image
FROM nginx:alpine

# Copy your HTML, CSS, and JS files to the Nginx server directory
# This assumes your index.html is in the root of your repo
COPY . /usr/share/nginx/html

# Expose port 80 (standard for web servers)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
