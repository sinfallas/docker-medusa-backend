FROM node:20-alpine
RUN apk add --no-cache postgresql-client dumb-init libc6-compat
WORKDIR /server
COPY package*.json ./
RUN npm ci --include=dev
EXPOSE 9000
