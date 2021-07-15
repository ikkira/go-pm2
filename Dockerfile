FROM node:current-alpine3.14
LABEL Author="ikkira"
ADD start.sh /start.sh
# ADD main /main/main
RUN npm install -g pm2
WORKDIR /
CMD ["sh", "start.sh"]