# Use the official Node.js 18 base image
FROM node:18-alpine

# Install dotenvx
RUN curl -sfS https://dotenvx.sh/install.sh | sh

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy dependencies
COPY node_modules/ node_modules

# Copy built code
COPY dist/ dist

# Copy env configuration
COPY .env* .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["dotenvx", "run", "--", "node", "dist/main"]