# CMD vs ENTRYPOINT in Docker

CMD and ENTRYPOINT are both used to define what runs inside a Docker container when it starts. However, they behave differently in how commands are executed and overridden.

---

# CMD

### Description:
CMD defines the **default command** for a container.

### Key Points:
- Provides default executable or arguments  
- Can be overridden at runtime using `docker run`  
- Only one CMD is allowed (last one wins if multiple exist)

### Example:
```dockerfile
CMD ["echo", "Hello World"]
```

### Override Example:
```bash
docker run myimage echo "Hi"
```

---

# ENTRYPOINT

### Description:
ENTRYPOINT defines the **main fixed command** that always runs when the container starts.

### Key Points:
- Always executes when container starts  
- Cannot be easily overridden  
- Best for containers that behave like executables  

### Example:
```dockerfile
ENTRYPOINT ["nginx"]
```

---

# CMD vs ENTRYPOINT Comparison

| Feature        | CMD                          | ENTRYPOINT                     |
|----------------|-----------------------------|--------------------------------|
| Purpose        | Default command             | Fixed command                  |
| Override       | Yes (easy)                  | No (or requires `--entrypoint`)|
| Flexibility    | High                        | Low                            |
| Use Case       | Default arguments           | Main application container     |

---

# Working Together

When both are used:

- ENTRYPOINT = main command  
- CMD = default arguments  

### Example:
```dockerfile
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
```

### Result:
```bash
nginx -g "daemon off;"
```

---

# Summary

- CMD → default, flexible, overridable  
- ENTRYPOINT → fixed execution command  
- Best practice → use both together for production containers  
