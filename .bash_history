sudo apt update -y
sudo apt install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl status docker
mkdir node-app
cd node-app
vi package.json
vi serverr.js
vi Dockerfile
ls
docker build -t node-app .
sudo chmod 755 /var/run/docker.sock
docker build -t node-app .
sudo chmod 777 /var/run/docker.sock
docker build -t node-app .
docker images
docker run -dp 3001:3000 -f node-app
docker run -dp 3001:3000 node-app
docker ps 
docker ps -a
docker start affectionate_cartwright
docker ps
curl http://localhost:3001
docker logs affectionate_cartwright
tree
sudo snap install tree 
tree
docker run -it node-app sh
ls
mv serverr.js server.js
docker run -dp 3001:3000 node-app
docker ps
docker ps -a
docker rm -f $(ps -a -q)
docker rm -f $(docker ps -a -q)
ls
docker images
docker rmi node-app
docker build -t node-app .
docker images
docker run -d -p 3000:3000 node-app
docker ps 
curl http://localhost:3000
mkdir app1
cd app1
git --version
git clone https://github.com/Siddeshg672/node-app.git
ls
cd node-app
ls
cat docker-compose.yml
vim docker-compose.yml
docker compose up -d
docker ps
docker compose ps
curl http://localhost:3001
ls
cat Dockerfile
cd
pwd
ls
mkdir war
cd war
cd
git clone https://github.com/Siddeshg672/hello_world_public_war.git
ls
rm -r war
mkdir war
mv -r hello_world_public_war ~/war/
mv ~/hello_world_public_war ~/war/
ls
cd war
ls
vi Dockerfile
docker build -t war-app .
ls
mv hello_world_public_war build
ls
docker build -t war-app .
cd build
ls
cat Dockerfile
ls /webapp
cd webapp
ls
cd ../..
ls
vi Dockerfile
docker build -t war-app .
ls /war
ls
ls build
vi Dockerfile
docker build -t war-app .
ls
cd build
ls
copy pom.xml ~/war/
cp pom.xml ~/war/
ls
cd -
ls
docker build -t war-app .
mv build hello_world_public_war
docker build -t war-app . --no-cache
ls
cd hello_world_public_war
ls
vi Dockerfile
docker build -t war-app .
vi Dockerfile
docker build -t war-app .
docker images
docker run -d -p 8081:8080 war-app 
docker ps
curl http://localhost:8081
clear
ls
ls webapp
docker ps
docker exec war-app
docker exec -it war-app
docker exec -it 6b8d3308681f
docker exec --help
cd src
ls
cd webapp
ls
cd src
ls
pwd
ls
cd war
ls
docker ps
docker ecec -it 6b8d3308681f
docker exec -it 6b8d3308681f
docker exec -it 6b8d3308681f sh
cd 
ls
mkdir userapp
cd userapp
vi package.json
vi app.js
docker ps -a
docker rm -f $(docker ps -a -q)
ls
vi Dockerfile
ls
docker build -t useradd .
docker images
docker run -d -p 3000:3000 useradd
ls
docker ps -a
curl http://localhost:3000
docker logs 4cdf3ec98ff9
docker exec -it 4cdf3ec98ff9 sh
cd
ls
docker ps -a
docker stop 4cdf3ec98ff9
docker rm 4cdf3ec98ff9
mkdir nginx
cd nginx
Vvi Dockerfile
vi Dockerfile
vi nginx.conf
mkdir dist
vi dist/index.html
pwd
ls
cd nginx
ls
docker build -t nginx-new .
docker run -d -p 8080:80 nginx-new
docker ps -a
curl http://localhost:8080
docker exec -it 565298f8cd51
docker exec -it 565298f8cd51 sh
ls
cat Dockerfile
docker exec -it 565298f8cd51 sh
docker ps -a
docker restart 565298f8cd51
docker stop 565298f8cd51
docker start 565298f8cd51
docker stop 565298f8cd51
docker rm 565298f8cd51
cd
docker images
docker rmi node-app-app
ls
docker images
df -h
free -m
free
top
clear
htop
ls
mkdir fullstack
cd fullstack
vi package.json
vi app.js
vi app.py
vi requirements.txt
vi Dockerfile
ls
tree
docker build -t multi-app .
docker run -p 3000:3000 -p 5000:5000 multi-app
vi package.json
docker images
docker rmi multi-app
docker rmi -f multi-app
docker images
ls
docker build -t multi-app .
docker run -p 3000:3000 -p 5000:5000 multi-app
docker ps -a
docker logs 9f6ecf43c1a9
docker stop 9f6ecf43c1a9
docker rm 9f6ecf43c1a9
docker ps
docker ps -a
docker rm 11329aa8cda9
docker ps -a
docker volume
docker volume ls
cd
ls
mkdir fastapi
cd fastapi
vi Dockerfile
vi requirements.txt
vi main.py
tree
docker build -t fastapi-app .
docker run -p 8000:8000 fastapi-app
