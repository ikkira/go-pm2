FROM node:current-alpine3.14
LABEL Author="ikkira"
ADD start.sh /start.sh
ADD test.sh /test.sh
RUN apk add alpine-conf && \
    /sbin/setup-timezone -z Asia/Shanghai && \
    apk del alpine-conf
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && cnpm install -g pm2
HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=3 CMD [ "/bin/sh /test.sh" ]
# WORKDIR /
CMD ["sh", "/start.sh"]