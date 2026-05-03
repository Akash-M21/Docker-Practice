# Docker Volumes 📦

Docker containers are ephemeral (temporary). When a container is removed, data is lost.

Volumes solve this problem by providing **persistent storage**.

---

## Why Volumes?

- Data persistence  
- Data sharing between containers  
- Backup & restore support  
- Required for databases and stateful apps  

---

## Volume Types

### 1. Bind Mount
Directly maps host directory to container.

```bash
docker run -d -v /host/data:/app/data nginx
```

---

### 2. Anonymous Volume
Automatically created temporary volume.

```bash
docker run -d -v /app/data nginx
```

---

### 3. Named Volume (Recommended)
Managed by Docker and reusable.

```bash
docker volume create myvolume
docker run -v myvolume:/app/data nginx
```

---

### 4. Tmpfs Volume
Stores data in RAM (temporary).

```bash
docker run --tmpfs /app/cache nginx
```

---

### Volume Commands

```bash
docker volume ls
docker volume create <name>
docker volume inspect <name>
docker volume rm <name>
docker volume prune
```

---

# Docker Networking 🌐

Docker networking enables communication between containers, host system, and external world.

---

## Network Types

- Bridge (default) – isolated container network  
- Host – shares host network  
- None – no networking  
- Overlay – multi-host communication  
- Macvlan – physical network-like behavior  
- IPvLAN – advanced IP control  

---

## Networking Commands

```bash
docker network ls
docker network inspect <network>
docker network create <name>
docker network rm <name>
docker network prune
docker network connect <network> <container>
docker network disconnect <network> <container>
```

---

## Example Scenario

Demonstrates multi-network container communication.

```bash
docker network create fruitbridge
docker network create animalbridge

docker run -id --name apple --network fruitbridge tomcat:alpine
docker run -id --name orange --network fruitbridge tomcat:alpine
docker run -id --name tiger --network animalbridge tomcat:alpine

docker network connect animalbridge apple
```

---

# Docker Compose 🧩

Docker Compose is used to define and run multi-container applications using a YAML file.

---

## Why Docker Compose?

- Single file configuration  
- Multi-container orchestration  
- Automatic networking  
- Easier deployment  

---

## Commands

```bash
docker compose up -d
docker compose down
docker compose ps
docker compose logs
docker compose exec <service> <cmd>
docker compose stop
docker compose rm
```

---

## Example Workflow

```bash
sudo apt install docker-compose-plugin
docker compose version
mkdir myapp && cd myapp
docker compose up -d
docker compose ps
docker compose down
```

---

# Container Advanced Operations ⚙️

Used for advanced container modifications and debugging.

```bash
docker exec -it <container> /bin/bash
docker commit <container> <image>:1.0
```

---

# CMD vs ENTRYPOINT

### CMD
- Default command
- Can be overridden at runtime

### ENTRYPOINT
- Fixed command
- Always executes when container starts

---

# Docker Swarm 🐝

Docker Swarm is Docker’s native clustering and orchestration tool.
It allows multiple Docker hosts to work as a single cluster for high availability and scaling (similar to Kubernetes).
