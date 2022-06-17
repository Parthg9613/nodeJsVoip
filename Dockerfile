FROM node:14
MAINTAINER rofl256
RUN mkdir -p /opt/build
WORKDIR /opt/app
COPY ./package.json /opt/build
RUN npm install
COPY . /opt/build
EXPOSE 80
EXPOSE 443
CMD ["node", "server.js"]
