FROM node:16-alpine3.14

ENV NODE_ENV=production

RUN addgroup -g 1017 -S appgroup \
  && adduser -u 1017 -S appuser -G appgroup \
  && apk update \
  && apk add build-base python3

WORKDIR /app

COPY . .

RUN npm install

RUN chown -R appuser:appgroup /app

USER 1017

RUN chmod +x start.sh

CMD ["./start.sh"]