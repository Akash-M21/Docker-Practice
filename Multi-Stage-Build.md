# Multi-Stage Builds in Docker

Multi-stage builds allow you to use multiple `FROM` statements in a single Dockerfile. Each `FROM` instruction starts a new stage of the build and can use a different base image.

This helps in creating **smaller, optimized, and production-ready images** by copying only required artifacts from one stage to another.

---

# How Multi-Stage Builds Work

- Each `FROM` creates a new build stage  
- Each stage can use a different base image  
- You can selectively copy files between stages  
- Unnecessary build files are left behind, reducing final image size  

---

# Key Benefit

✔ Smaller image size  
✔ Better security (no build tools in final image)  
✔ Faster deployment  
✔ Cleaner production images  

---

# Multi-Stage Dockerfile Example

```dockerfile
# Stage 1: Build stage
FROM maven:3.9-eclipse-temurin-17 AS builder

WORKDIR /app
COPY . .

RUN mvn clean package

---

# Stage 2: Runtime stage
FROM tomcat:9.0

# Copy only the built artifact from previous stage
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
```

---

# Explanation

### Stage 1 (Builder)
- Uses Maven image
- Compiles the application
- Generates `.war` or `.jar` file

### Stage 2 (Runtime)
- Uses lightweight Tomcat image
- Copies only the built artifact
- Does NOT include Maven or build tools

---

# Why Multi-Stage Builds?

Without multi-stage builds:
- Image contains build tools (Maven, Gradle, etc.)
- Image becomes large and insecure

With multi-stage builds:
- Only final application is included
- Image is lightweight and production-ready

---

# Summary

- Multi-stage builds use multiple `FROM` instructions  
- Each stage can use different base images  
- Only required artifacts are copied to final image  
- Helps create optimized Docker images  
