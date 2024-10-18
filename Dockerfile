# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the port
EXPOSE 5000

# Run the application
CMD ["node", "app.js"]
