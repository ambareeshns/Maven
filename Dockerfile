FROM docker-local.artifactory.wuintranet.net/wubs-alpine-jdk8:latest as dude
RUN mkdir -p WAR-FILE
COPY /target/*.war /WAR-FILE/*.war


FROM tomcat:jre8-temurin-focal
COPY --from=dude /WAR-FILE/*.war /usr/local/tomcat/webapps
