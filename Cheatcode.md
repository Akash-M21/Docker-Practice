# Docker Commands Cheat Sheet

---

# 1. Build Images

Building an image means converting a Dockerfile into a reusable template.

### Build image from Dockerfile
```bash
docker build -t <image_name>:<tag> .
```

Example:
```bash
docker build -t myapp:1.0 .
```

### Build using custom Dockerfile
Used when Dockerfile has a different name or path.

```bash
docker build -t <image_name>:<tag> -f <Dockerfile_name> .
```

---

# 2. List Images

Displays all locally available Docker images.

```bash
docker images
```

---

# 3. Run Containers

Running a container means creating and starting an instance of an image.

### Interactive mode
Used for debugging or accessing shell.

```bash
docker run -it <image_name>:<tag> /bin/bash
```

### Detached mode (background execution)
Commonly used in production.

```bash
docker run -id --name <container_name> -p <host_port>:<container_port> <image_name>:<tag>
```

---

# 4. Container Management

Used to manage lifecycle of containers.

```bash
docker ps            # Shows running containers
docker ps -a         # Shows all containers
docker start <id>    # Start stopped container
docker stop <id>     # Stop running container
docker restart <id>  # Restart container
```

---

# 5. Remove Containers

Removes unused or stopped containers to free resources.

```bash
docker rm <container_id|name>
docker rm -f <container_id|name>
```

---

# 6. Remove Images

Images consume disk space; removing unused ones helps optimization.

```bash
docker rmi <image>:<tag>
docker rmi <image_id>
```

### Dangling Images (Unwanted layers)

Dangling images are unused images without tags.

```bash
docker images -f dangling=true
docker rmi $(docker images -f dangling=true -q)
docker image prune
docker image prune -a
```

---

# 7. Access Container Shell

Used for debugging inside a running container.

```bash
docker exec -it <container_id|name> /bin/bash
```

---

# 8. Cleanup Unused Resources

Removes unused containers, images, volumes, and networks.

```bash
docker system prune
docker system prune -a --volumes -f
docker container prune -f
docker image prune -a -f
docker volume prune -f
docker network prune -f
```

---

# 9. Docker Hub Commands

Used for pushing and pulling images from Docker Hub.

```bash
docker login -u <username>

docker tag <image>:<tag> <user>/<repo>:<tag>

docker push <user>/<repo>:<tag>

docker pull <user>/<repo>:<tag>
```

---

# 10. View Logs

Used to debug application inside containers.

```bash
docker logs <container>
docker logs -f <container>
```

---

# 11. Check Processes

Shows running processes inside container.

```bash
docker top <container>
```

---

# 12. Copy Files

Used to transfer files between host and container.

```bash
docker cp <container>:<path> <host_path>
docker cp <host_path> <container>:<path>
```

---

# 13. Docker Inspect

Provides detailed low-level information about Docker objects.

```bash
docker inspect <object>
docker volume inspect <volume>
docker network inspect <network>
```

Get container IP:
```bash
docker inspect --format='{{ .NetworkSettings.IPAddress }}' <container>
```

---

# 14. Docker Info

Displays system-wide Docker information.

```bash
docker info
```

---

# 15. Docker Stats

Displays real-time resource usage of containers.

```bash
docker stats
```

---
