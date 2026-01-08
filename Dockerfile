FROM node:20-alpine

WORKDIR /app

# Cài dependency
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# NestJS backend (thường port 3000)
EXPOSE 3000

# Chạy backend bằng npm run start
CMD ["npm", "run", "start"]
