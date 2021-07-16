FROM node:current-alpine3.14
LABEL Author="ikkira"
ADD start.sh /start.sh
ADD run.json /run.json
RUN npm install -g pm2
WORKDIR /
CMD ["sh", "start.sh"]