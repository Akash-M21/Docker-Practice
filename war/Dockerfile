# Build stage
FROM maven:3.9-eclipse-temurin-17 AS builder

WORKDIR /build
COPY . .
RUN mvn clean package

# Runtime stage
FROM tomcat:9.0

COPY --from=builder /build/webapp/target/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
