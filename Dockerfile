FROM node:alpine

ENV SERVER_FOLDER=/opt/mockserver

EXPOSE 80

RUN mkdir -p ${SERVER_FOLDER}
COPY . ${SERVER_FOLDER}
WORKDIR ${SERVER_FOLDER}

RUN yarn install --production

ENTRYPOINT ["yarn", "start"]
