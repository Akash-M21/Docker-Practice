# Docker Volumes 📦

Docker containers are **ephemeral (temporary)**. This means when a container is removed, all data inside it is lost.

To solve this problem, Docker provides **volumes** for persistent storage.

---

# Why Volumes?

Docker Volumes are used for:

- Data persistence (data survives container deletion)  
- Data sharing between containers  
- Backup and restore support  
- Required for databases and stateful applications  

---

# Volume Types

## 1. Bind Mount

Maps a specific host directory directly into the container.

```bash
docker run -d -v /host/data:/app/data nginx
```

### Use Case:
- Development environments  
- Direct file synchronization  

---

## 2. Anonymous Volume

Automatically created temporary volume without a name.

```bash
docker run -d -v /app/data nginx
```

### Use Case:
- Temporary storage  
- Testing purposes  

---

## 3. Named Volume (Recommended)

Managed by Docker and reusable across containers.

```bash
docker volume create myvolume
docker run -v myvolume:/app/data nginx
```

### Use Case:
- Production databases  
- Persistent application data  

---

## 4. Tmpfs Volume

Stores data in RAM instead of disk (temporary storage).

```bash
docker run --tmpfs /app/cache nginx
```

### Use Case:
- Sensitive or temporary data  
- High-speed caching  

---

# Volume Commands

```bash
docker volume ls
```
List all volumes.

```bash
docker volume create <name>
```
Create a new named volume.

```bash
docker volume inspect <name>
```
Show detailed information about a volume.

```bash
docker volume rm <name>
```
Remove a specific volume.

```bash
docker volume prune
```
Remove all unused volumes.

---

# Summary

- Volumes provide persistent storage for containers  
- They survive container restarts and deletions  
- Named volumes are best for production use  
- Bind mounts are useful for development  
- Tmpfs is used for temporary in-memory storage  
