FROM node:18-bullseye 
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install playwright
RUN npx playwright install --with-deps chromium
COPY . .
CMD ["npm", "start"]