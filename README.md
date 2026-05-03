# Docker-Practice
# Docker

Docker is a containerisation platform which packages our application and its dependencies together to form a container.

---

## Docker Images

A Docker image is a set of instructions stored in the form of layers.  
It is **read-only** and does not have any state.

---

## Docker Container

A Docker container is the runtime instance of an image.  
It has **read/write access**, can be modified, and its state changes during execution.

---

## Docker Installation (Ubuntu)

Follow the steps below to install Docker on Ubuntu:

1. sudo apt update

2. sudo apt install ca-certificates curl gnupg

3. sudo install -m 0755 -d /etc/apt/keyrings

4. curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

5. sudo chmod a+r /etc/apt/keyrings/docker.gpg

6. echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

7. sudo apt update

8. apt-cache policy docker-ce

9. sudo apt install docker-ce -y

10. sudo systemctl status docker

````markdown
# Building Docker Images using Dockerfile and Containerizing

## Dockerfile

A **Dockerfile** is a text file that contains instructions for building your source code into a Docker image.

---

## Docker Build

`docker build` is a simple single command that automatically generates Docker images by reading instructions from a Dockerfile.

---

## Dockerfile Instructions

### 1. FROM
Defines the base image.

```dockerfile
FROM tomcat:latest
````

---

### 2. RUN

Executes Linux commands inside the image during build time.

```dockerfile
RUN mkdir folder1
RUN wget https://github.com
```

---

### 3. COPY

Copies files from local system to container.

```dockerfile
COPY src(local) dest(container)
```

---

### 4. ADD

Copies files or downloads from internet into the container.

```dockerfile
ADD https://github.com
```

---

### 5. WORKDIR

Sets the working directory inside the container.

```dockerfile
WORKDIR /app
```

---

### 6. EXPOSE

Specifies the port the container will listen on.

```dockerfile
EXPOSE 8000
```

---

### 7. USER

Switches between users inside the container.

```dockerfile
USER root
```

---

### 8. ENV

Sets environment variables.

```dockerfile
ENV APP_ENV=production
```

---

### 9. ARG

Defines build-time variables.

```dockerfile
ARG VERSION=1.0
```

---

### 10. CMD

Provides default command to run when container starts.

```dockerfile
CMD ["echo", "Hello World"]
```

---

### 11. ENTRYPOINT

Defines the main executable that always runs when the container starts.

```dockerfile
ENTRYPOINT ["nginx"]
```

---

### 12. LABEL

Adds metadata to the image.

```dockerfile
LABEL version="1.0"
LABEL maintainer="admin@example.com"
```

---

### 13. MAINTAINER

Specifies the author of the image.

```dockerfile
MAINTAINER Akash
```

---

### 14. VOLUME

Creates and attaches a volume to the container.

```dockerfile
VOLUME ["/data"]
```

---

## Reference

* Jenkins Docker images: [https://hub.docker.com/_/jenkins/tags](https://hub.docker.com/_/jenkins/tags)

``
