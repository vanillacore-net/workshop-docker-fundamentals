# Stage 1: Build (Simulating a build step if needed)
FROM node:18 AS builder

WORKDIR /app

# Copy existing static files
COPY ./index.html /app

# Install html-minifier globally
RUN npm install -g html-minifier

# Simulate a "build step" (if needed, e.g., minification, bundling)
RUN html-minifier --input-dir /app --output-dir /app --file-ext html --remove-comments --collapse-whitespace --minify-js true --minify-css true

# Stage 2: Serve with NGINX
FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Remove default HTML-files
RUN rm -rf ./*

# Copy minified static files from builder stage
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html

# Copy other assets directly from source (CSS, JS, images, etc.)
COPY ./*.css /usr/share/nginx/html/

# Expose port 80 (default for NGINX)
EXPOSE 80

