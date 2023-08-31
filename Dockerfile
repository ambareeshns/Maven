FROM tomcat:jre8-temurin-focal
COPY ROOT.war /usr/local/tomcat/webapps
EXPOSE 8090
