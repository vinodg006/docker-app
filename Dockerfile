FROM node:alpine

# set working directory to avoid conflicts with filesystem in container FS
WORKDIR /app

# Copy only package.json to run 'npm i' command and avoid 'npm i' step on every code change  
COPY package.json /app

RUN npm i

COPY . /app

EXPOSE 80

CMD [ "node", "server.js" ]
