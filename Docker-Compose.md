# Docker Compose 🧩

Docker Compose is used to define and run multi-container applications using a YAML file (`docker-compose.yml`).

It allows you to manage multiple services (containers) together with a single command.

---

# Why Docker Compose?

- Single file configuration for entire application  
- Multi-container orchestration  
- Automatic network creation between services  
- Easier deployment and scaling  
- Simplifies development and testing environments  

---

# Docker Compose Commands

```bash
docker compose up -d
```
Start containers in detached mode.

```bash
docker compose down
```
Stop and remove containers, networks, and volumes.

```bash
docker compose ps
```
List running services.

```bash
docker compose logs
```
View logs of all services.

```bash
docker compose exec <service> <cmd>
```
Execute command inside a running service container.

```bash
docker compose stop
```
Stop services without removing them.

```bash
docker compose rm
```
Remove stopped containers.

---

# Example Workflow

### Step 1: Install Docker Compose Plugin
```bash
sudo apt install docker-compose-plugin
```

### Step 2: Verify Installation
```bash
docker compose version
```

### Step 3: Create Project Directory
```bash
mkdir myapp && cd myapp
```

### Step 4: Start Application
```bash
docker compose up -d
```

### Step 5: Check Running Services
```bash
docker compose ps
```

### Step 6: Stop Application
```bash
docker compose down
```

---

# Container Advanced Operations ⚙️

These commands are used for debugging and modifying running containers.

---

## Access Container Shell

Used to enter a running container for debugging or configuration.

```bash
docker exec -it <container> /bin/bash
```

---

## Commit Container Changes

Creates a new image from a modified container.

```bash
docker commit <container> <image>:1.0
```

---

# Summary

- Docker Compose manages multi-container applications  
- Uses YAML configuration file  
- Simplifies networking and deployment  
- Advanced operations help in debugging and image creation  
