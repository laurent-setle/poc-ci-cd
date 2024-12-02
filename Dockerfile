# Use the official Node.js 18 base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy dependencies
COPY node_modules/ node_modules/

# Copy built code
COPY dist/ dist/

# Copy env configuration
COPY .env.vault .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "dist/main"]