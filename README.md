# Docker Complete Guide

Docker is one of the most widely used containerization platforms in DevOps. It helps package applications and their dependencies into lightweight, portable containers.

---

# What is Docker?

Docker is a containerisation platform which packages an application and its dependencies together to form a container.

It helps in:
- Consistent environments  
- Easy deployment  
- Faster application delivery  
- Portability across systems  

---

# Docker Architecture Overview

```
Dockerfile → Docker Image → Docker Container
(Build)       (Read-only)       (Running instance)
```

---

# Docker Images

A Docker image is a set of instructions stored in layers.

- Read-only  
- Stateless  
- Used to create containers  

---

# Docker Containers

A Docker container is a runtime instance of a Docker image.

- Read/Write access  
- Stateful  
- Can be started, stopped, modified  

---

# Docker Installation (Ubuntu)

```bash
sudo apt update

sudo apt install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

sudo systemctl status docker
```

---

# Dockerfile

A **Dockerfile** is a text file that contains instructions for building a Docker image.

---

# Docker Build

`docker build` is a command that reads a Dockerfile and automatically generates a Docker image.

```bash
docker build -t my-image .
```

---

# Dockerfile Instructions

## 1. FROM
Defines base image.

```dockerfile
FROM tomcat:latest
```

---

## 2. RUN
Executes Linux commands during image build.

```dockerfile
RUN mkdir folder1
RUN wget https://github.com
```

---

## 3. COPY
Copies files from local machine to container.

```dockerfile
COPY src/ /app/src/
```

---

## 4. ADD
Copies files or downloads from URL into container.

```dockerfile
ADD https://github.com/file.tar.gz /app/
```

---

## 5. WORKDIR
Sets working directory inside container.

```dockerfile
WORKDIR /app
```

---

## 6. EXPOSE
Declares container port.

```dockerfile
EXPOSE 8000
```

---

## 7. USER
Switches container user.

```dockerfile
USER root
```

---

## 8. ENV
Sets environment variables.

```dockerfile
ENV APP_ENV=production
```

---

## 9. ARG
Defines build-time variables.

```dockerfile
ARG VERSION=1.0
```

---

## 10. CMD
Default command executed when container starts.

```dockerfile
CMD ["echo", "Hello World"]
```

---

## 11. ENTRYPOINT
Main executable that always runs.

```dockerfile
ENTRYPOINT ["nginx"]
```

---

## 12. LABEL
Adds metadata to image.

```dockerfile
LABEL version="1.0"
LABEL maintainer="Akash"
```

---

## 13. MAINTAINER
Specifies image maintainer (deprecated).

```dockerfile
MAINTAINER Akash
```

---

## 14. VOLUME
Attaches persistent storage.

```dockerfile
VOLUME ["/data"]
```

---

# Real-World Example (Nginx Static Site)

```dockerfile
FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/
COPY dist/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

---

# Docker Image Example (Jenkins)

Docker Hub Reference:  
https://hub.docker.com/_/jenkins/tags

---

# Summary

- Docker simplifies application deployment  
- Images are immutable templates  
- Containers are running instances of images  
- Dockerfile defines how images are built  
- Docker build automates image creation  

---

# DevOps Flow

```
Code → Dockerfile → Image → Container → Deployment
```
