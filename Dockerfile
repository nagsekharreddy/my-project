FROM openjdk:8-jre-alpine

EXPOSE 8080

WORKDIR /usr/app

RUN docker build -t java-app .

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
