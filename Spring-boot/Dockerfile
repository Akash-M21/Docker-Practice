FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy built jar
COPY target/app.jar app.jar

EXPOSE 8080

# JVM tuning
ENTRYPOINT ["java", "-Xms256m", "-Xmx512m", "-jar", "app.jar"]
