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
