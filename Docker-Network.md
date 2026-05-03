# Docker Networking 🌐

Docker networking enables communication between containers, host system, and external networks (internet or other machines).

It allows containers to connect, isolate, and securely exchange data depending on the network type used.

---

# Network Types

### 1. Bridge (Default)
- Default Docker network
- Containers are isolated but can communicate within same bridge

### 2. Host
- Shares host machine’s network stack
- No network isolation
- High performance

### 3. None
- Disables networking completely
- Fully isolated container

### 4. Overlay
- Used in multi-host environments
- Enables communication across different Docker hosts

### 5. Macvlan
- Assigns MAC address to containers
- Makes container appear like a physical device on network

### 6. IPvLAN
- Advanced control over IP addressing
- Useful for enterprise network integration

---

# Networking Commands

```bash
docker network ls
```
List all available networks.

```bash
docker network inspect <network>
```
View detailed information about a network.

```bash
docker network create <name>
```
Create a new custom network.

```bash
docker network rm <name>
```
Remove a network.

```bash
docker network prune
```
Remove all unused networks.

```bash
docker network connect <network> <container>
```
Connect a running container to a network.

```bash
docker network disconnect <network> <container>
```
Disconnect a container from a network.

---

# Example Scenario (Multi-Network Communication)

This example demonstrates how containers communicate within and across different networks.

---

### Step 1: Create Networks
```bash
docker network create fruitbridge
docker network create animalbridge
```

---

### Step 2: Run Containers

```bash
docker run -id --name apple --network fruitbridge tomcat:alpine
docker run -id --name orange --network fruitbridge tomcat:alpine
docker run -id --name tiger --network animalbridge tomcat:alpine
```

---

### Step 3: Test Communication

Containers in the same network can communicate:

```bash
docker exec -it apple ping orange
```

Containers in different networks cannot communicate initially:

```bash
docker exec -it apple ping tiger
```

---

### Step 4: Connect Container to Another Network

```bash
docker network connect animalbridge apple
```

---

### Step 5: Test Again

Now communication works across networks:

```bash
docker exec -it apple ping tiger
```

---

# Summary

- Docker networking enables container communication  
- Different network types serve different use cases  
- Bridge is default and most commonly used  
- Custom networks improve isolation and security  
- Containers can belong to multiple networks  
