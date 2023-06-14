# # Nginx web server running new index.html
# # ---------------------------------------
# # Use official Nginx image as base image
# FROM nginx

# # Label it with your name
# LABEL MAINTAINER=bradleywoods

# # Copy index.html to container Nginx html folder
# COPY index.html /usr/share/nginx/html/

# # Expose Port 80 on container
# EXPOSE 80

# # Launch the app/server
# CMD ["nginx", "-g", "daemon off;"]

# # MongoDB database running
# # ---------------------------------------
# # Use official Mongo image as base image
# FROM mongo:3.2

# # Label it with your name
# LABEL MAINTAINER=bradleywoods

# # Copy app folder contents to container app folder
# COPY ./mongod.conf /etc/

# # Expose Port 27017 on container
# EXPOSE 27017

# # Launch the app/server
# CMD ["mongod"]

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

# Run npm install the app
RUN npm install

# Expose Port 3000 on container
EXPOSE 3000

# Seed the database and launch the app
CMD node seeds/seed.js && npm start
