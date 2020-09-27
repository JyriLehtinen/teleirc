# Build
FROM node:14-alpine3.10

USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apk update && apk add --no-cache npm bash

COPY . /
RUN npm install -g npm-check-updates
#RUN ncu -u
RUN npm update
RUN npm install

##RUN npm install -g teleirc && npm cache --force clear
#EXPOSE 9090

#CMD ["teleirc"]
CMD ["/bin/teleirc"]
