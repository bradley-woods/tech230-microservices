# Nginx web server running new index.html
# ---------------------------------------
# Use official Nginx image as base image
# FROM nginx

# Label it with your name
# LABEL MAINTAINER=bradleywoods

# Copy index.html to container Nginx html folder
# COPY index.html /usr/share/nginx/html/

# Expose Port 80 on container
# EXPOSE 80

# Launch the app/server
# CMD ["nginx", "-g", "daemon off;"]

# NodeJS running sample app
# ---------------------------------------
# Use official Node image as base image
FROM node

# Label it with your name
LABEL MAINTAINER=bradleywoods

# Create and navigate to app folder
WORKDIR /usr/src/app

# Copy app folder contents to container app folder
COPY app /usr/src/app

# Expose Port 3000 on container
EXPOSE 3000

# Launch the app/server
CMD ["node", "app.js"]