FROM keymetrics/pm2-docker-alpine:8

ADD . /app

WORKDIR ./app

VOLUME ./app

RUN mkdir node_modules

RUN npm install

CMD ["pm2-docker", "start", "--auto-exit", "--env", "production", "process.yml"]
