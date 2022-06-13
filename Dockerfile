FROM node:14
MAINTAINER rofl256
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY ./package.json /opt/app
RUN npm install
COPY . /opt/app
EXPOSE 80
EXPOSE 443
CMD ["node", "server.js"]
