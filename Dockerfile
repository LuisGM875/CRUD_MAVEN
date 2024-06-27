# Usa una imagen base de Java
FROM eclipse-temurin:17.0.11_9-jdk as builder

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo POM y las dependencias de Maven
COPY ./pom.xml /app/
COPY ./src /app/src

# Instala Maven (si no está ya presente en la imagen base)
RUN apt-get update && apt-get install -y maven

# Descarga las dependencias y construye el proyecto
RUN mvn clean package

# Expone el puerto en el que tu aplicación escucha
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar"]
CMD ["target/maven-0.0.1-SNAPSHOT.jar"]