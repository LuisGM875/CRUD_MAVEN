FROM eclipse-temurin:21.0.3_9-jdk

#expose the port
EXPOSE 8081

#set the working directory
WORKDIR /root

#copy the project files
COPY ./pom.xml /root
COPY ./.mvn /root/.mvn
COPY ./mvnw /root

#download dependencies
RUN ./mvnw dependency:go-offline

#copy the source code
COPY ./src /root/src

#build the project
RUN ./mvnw clean install -DskipTests

#run the project when the container starts
ENTRYPOINT ["java", "-jar", "/root/target/SpringDocker-0.0.1-SNAPSHOT.jar"]

