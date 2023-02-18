FROM node:19-alpine

WORKDIR /usr/app

RUN npm install --unsafe-perm=true -g @11ty/eleventy

COPY entrypoint.sh /usr/app
RUN chmod +x /usr/app/entrypoint.sh

ENTRYPOINT ["/usr/app/entrypoint.sh"]
