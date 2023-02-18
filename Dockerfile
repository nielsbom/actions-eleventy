FROM node:19-alpine

WORKDIR /usr/app

RUN npm install --unsafe-perm=true -g @11ty/eleventy
RUN npm install --unsafe-perm=true
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
