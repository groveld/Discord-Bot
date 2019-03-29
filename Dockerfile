FROM node:8.15-alpine
MAINTAINER Martin Groeneveld <martin@groveld.com>

# add local files
WORKDIR /app
COPY package.json .
RUN npm install
COPY app .

# ports and volumes
VOLUME /config
EXPOSE 5000

# start app
CMD [ "node", "index.js" ]
