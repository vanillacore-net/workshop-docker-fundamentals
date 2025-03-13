# Stage 1: Build (Simulating a build step if needed)
FROM node:18 AS builder

WORKDIR /app

# Copy existing static files
COPY ./*.html /app

# Simulate a "build step" (if needed, e.g., minification, bundling)
RUN npm install -g minify && minify --output /app/index.min.html /app/index.html

# Stage 2: Serve with NGINX
FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Remove default HTML-files
RUN rm -rf ./*

# Copy minified static files from builder stage
COPY --from=builder /app/index.min.html /usr/share/nginx/html/index.html

# Copy other assets directly from source (CSS, JS, images, etc.)
COPY ./*.css /usr/share/nginx/html/

# Expose port 80 (default for NGINX)
EXPOSE 80

