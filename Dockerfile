# Build
FROM node:alpine

USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apk update && apk add --no-cache npm 

COPY . /
RUN npm install


EXPOSE 9090

CMD ["bin/teleirc"]
