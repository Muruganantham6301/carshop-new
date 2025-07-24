# 1. Use a lean Node.js runtime
FROM node:20-alpine

# 2. Set working directory
WORKDIR /app

# 3. Copy project files
COPY package*.json ./
COPY server.js ./
COPY public ./public

# 4. Install dependencies (only express)
RUN npm install express --production

# 5. Bind port and define run command
ENV PORT=3000
EXPOSE 3000
CMD ["node", "server.js"]
