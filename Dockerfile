# Base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source code
COPY . .

# Build application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start application
CMD ["npm", "start"]
