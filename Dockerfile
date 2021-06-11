FROM openjdk:8-jre-alpine

EXPOSE 8080

WORKDIR /usr/app

RUN docker build -t java-app .

RUN docker tag java-app demo-app:java-1.0

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
