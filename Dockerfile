# specify the node base image with your desired version node:<version>
FROM node:16.16.0
WORKDIR /var/www
RUN npm install --location=global npm@8.18.0
RUN npm install --location=global json-server json-server-auth
RUN npm install --location=global express

# replace this with your application's default port
EXPOSE 3000
