FROM node:19-alpine

WORKDIR /usr/app

RUN npm config set unsafe-perm true
RUN npm install -g @11ty/eleventy
RUN npm install
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
