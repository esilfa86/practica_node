FROM node:16-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

ARG CNAME

RUN npm install

USER node

COPY --chown=node:node . . 

RUN sed -i "s/NOMBREACAMBIAR/${CNAME}/g" ./app.js

EXPOSE 8081

CMD ["npm","start", "app.js"]






