FROM eclipse-temurin:17.0.11_9-jdk as builder

WORKDIR /root

COPY ./pom.xml /root/
COPY ./src /root/src

RUN apt-get update && apt-get install -y maven

RUN mvn clean package

EXPOSE 8080

ENTRYPOINT ["java", "-jar"]
CMD ["target/maven-0.0.1-SNAPSHOT.jar"]