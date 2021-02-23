FROM openjdk:8-alpine
MAINTAINER Jin

ARG APP_NAME=rumbleparty
ARG APP_PORT=5000
ARG VERSION=0.0.1
ENV PORT=$APP_PORT
ENV APP_NAME=$APP_NAME

ADD target/${APP_NAME}-${VERSION}-SNAPSHOT-standalone.jar /${APP_NAME}/app.jar

CMD ["sh", "-c", "java -jar /${APP_NAME}/app.jar"]
