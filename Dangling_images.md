# Dangling Images in Docker

In Docker, **dangling images** are images that:

- Do not have a tag
- Are not referenced by any container
- Usually appear as `<none>:<none>`

---

# How Dangling Images Are Created

Dangling images are commonly created when:

- You rebuild an image using the same tag
- Previous image layers become unused
- Intermediate build layers are left behind during Docker builds

---

# Example

When you run:

```bash
docker build -t my-app .
```

And then rebuild again:

```bash
docker build -t my-app .
```

The old image layers may become **dangling**.

---

# How to Identify Dangling Images

You can list dangling images using:

```bash
docker images -f dangling=true
```

Or:

```bash
docker image ls
```

Look for images with:

```
REPOSITORY   TAG       IMAGE ID       SIZE
<none>       <none>    abc123def456   120MB
```

---

# Why Dangling Images Are a Problem

- Consume disk space unnecessarily  
- Clutter Docker environment  
- Can confuse image management  

---

# How to Remove Dangling Images

### Remove only dangling images:
```bash
docker image prune
```

### Force remove without confirmation:
```bash
docker image prune -f
```

### Remove all unused images:
```bash
docker system prune -a
```

---

# Best Practice

✔ Regularly clean unused images  
✔ Use multi-stage builds to reduce leftovers  
✔ Use proper tagging strategy  

---

# Summary

- Dangling images are untagged and unused images  
- They are created during image rebuilds  
- They can be safely removed using `docker image prune`  
```
