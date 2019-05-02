FROM node:alpine

USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apk update && apk add --no-cache npm 
RUN npm install -g teleirc && npm cache --force clear

EXPOSE 9090

CMD ["teleirc"]
