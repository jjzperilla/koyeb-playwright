FROM node:18-bullseye  # Use a standard Node image
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install playwright
RUN npx playwright install --with-deps chromium  # Explicitly install Chromium
COPY . .
CMD ["npm", "start"]