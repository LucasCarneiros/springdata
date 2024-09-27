#
# Build stage
#
FROM maven:3.9.9-jdk-21 AS build

COPY src /app/src
COPY pom.xml /app

WORKDIR /app

RUN mvn clean install
#
# Package stage
#

FROM openjdk:21-jre-alpine

COPY --from=build /app/target/*.jar app.jar

WORKDIR /app

EXPOSE 8080

CMD ["java","-jar","app.jar"]

