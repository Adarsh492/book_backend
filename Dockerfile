#Sample Dockerfile for NodeJS Apps

FROM node:22.14.0
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
EXPOSE 5000
CMD [ "node", "server.js" ]
