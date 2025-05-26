# Use official lightweight NGINX image
FROM nginx:stable-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
