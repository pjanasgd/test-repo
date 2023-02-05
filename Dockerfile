FROM maven:3.8.6-openjdk-18 AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -e -f /usr/src/app/pom.xml clean package

FROM openjdk:17.0.2-slim-buster
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]