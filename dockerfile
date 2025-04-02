# Use an official Node.js image
FROM mcr.microsoft.com/playwright:v1.40.0-jammy

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Install Playwright browsers
RUN npx playwright install --with-deps

# Copy the rest of the application files
COPY . .

# Start the application
CMD ["node", "index.js"]