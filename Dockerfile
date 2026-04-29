FROM dhi.io/node:24-debian13-dev

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci

COPY . .

CMD ["npm", "run", "dev"]
