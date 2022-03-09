sudo apt-get update
sudo apt install curl -y
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
docker run --rm hello-world
docker run --help
docker run --rm hello-world
docker login
docker search java
docker pull java
docker tag java docktermo/java:8
docker images
docker push docktermo/java:8
docker search java
docker pull java
docker tag java kylelamberton1/java:8
docker push kylelamberton1/java:8
docker images
docker rmi java
docker i --help
docker i -- help
docker --help
docker run -d -p 8080:8080 --name jenkins_container jenkins/jenkins
docker ps
docker exec jenkins_container cat var/jenkins_home/secrets/initialAdminPassword
ls
docker run -d -p 8080:8080 --name jenkins_container jenkins/jenkins
docker ps
docker stop jenkins_container
docker rm jenkins_container
docker run -d -p 8080:8080 --name jenkins_container jenkins/jenkins
docker ps
docker exec jenkins_container cat var/jenkins_home/secrets/initialAdminPassword
mkdir dockerfile_exercises
cd dockerfile_exercises
touch dockerfile
ls
cd dockerfile_exercises
docker build -t ournginx .
docker run -d -p 80:80 --name nginx ournginx
curl localhost:80
docker ps
mkdir myapp
cd myapp
touch app.py
touch Dockerfile
docker build -t myapp .
docker run -d -p 5000:5000 --name myapp myapp
docker stop myapp
docker rm myapp
docker rmi myapp
docker build -t myapp .
mkdir myapp
cd myapp
touch app.py
touch dockerfile
docker build -t myapp .
docker run -d -p 5000:5000 --name myapp myapp
docker build -t myapp .
docker ps
cd duo-task-1
docker build -t myapp .
stop myapp
docker stop myapp
docker rm myapp
docker rmi myapp
docker built -t myapp .
docker build -t myapp .
docker ps
docker run -d -p 5500:5500 -- name myapp myapp
docker stop myapp
docker build -t myapp .
docker ps
docker run -d -p 5500:5500 --name duotask duotask
docker build -t duo-task .
docker ps
docker run -d -p 5500:5500 --name duo-task duo-task
docker ps
cd ..
git clone https://gitlab.com/qacdevops/multi-stage-build-exercise.git && cd multi-stage-build-exercise
touch Dockerfile
docker build -t spring-hello-world .
docker run -d -p 8080:8080 --name spring-app spring-hello-world
curl 20.108.54.203:8080
docker stop spring-app
docker rm spring-app
docker system prune -a
mkdir bind_mounts_exercise
touch bind_mounts_exercise/nginx.conf
cd ..
cd bind_mounts_exercise
mkdir bind_mounts_exercise
bind_mounts_exercise/nginx.conf
touch bind_mounts_exercise/nginx.conf
cd bind_mounts_exercise
docker run -d -p 80:80 --name nginx --mount type=bind,source=$(pwd)/nginx.conf,target=/etc/nginx/nginx.conf nginx
curl 20.108.54.203:80
docker images
docker run -d -p 5000:5000 --name registry registry
sudo vim /etc/docker/daemon.json
sudo service docker restart
docker pull nginx:latest
docker tag nginx:latest registry-vm:5000/my/nginx
docker push docker tag nginx:latest kyle-docker:5000/my/nginx
docker push kyle-docker:5000/my/nginx
docker images
mkdir docker_volumes
cd docker_volumes
docker volume create webpage
docker run -d -p 80:80 -- name nginx --mount type=volume,source=webpage, target=/usr/share/nginx/html nginx
docker run -d -p 80:80 --name nginx --mount type=volume,source=webpage,target=/usr/share/nginx/html nginx
docker exec -it nginx apt update
cd ..
docker images
docker stop registry
docker rm registry
docker images
docker stop registry
docker rm registry
docker stop registry-vm:5000/my/nginx
cd docker_volumes
docker exec -it nginx nano /usr/share/nginx/html/index.html
sudo docker exec -it kyle-docker bash
sudo docker -it kyle-docker bash
cd docker_volumes
sudo docker -it kyle-docker bash
docker volume create webpage
docker run -d -p 80:80 --name nginx --mount type=volume,source=webpage,target=/usr/share/nginx/html nginx
docker exec -it nginx apt update
docker images
docker system prune -a
docker volume create webpage
docker run -d -p 80:80 --name nginx --mount type=volume,source=webpage,target=/usr/share/nginx/html nginx
docker exec -it nginx apt update
docker exec -it nginx apt install -y nano
docker exec -it nginx nano /usr/share/nginx/html/index.html
docker stop nginx
docker rm nginx
docker run -d -p 81:90 --name nginx --volume webpage:/usr/share/nginx/html nginx
curl localhost:80
curl localhost:81
docker stop nginx
docker rm nginx
docker run -d -p 80:80 --name nginx --volume webpage:/usr/share/nginx/html nginx
curl localhost:80
docker run -d -p 81:80 --name nginx2 --volume webpage:/usr/share/nginx/html nginx
curl localhost:81
docker exec -it nginx2 apt update
docker exec -it nginx2 apt install -y nano
docker exec -it nginx2 nano /usr/share/nginx/html/index.html
curl localhost:80
curl localhost:81
docker stop nginx nginx2
docker rm nginx nginx2
docker rmi nginx
docker volume rm webpagew
docker volume rm webpage
sudo docker pull mysql/mysql-server:latest
sudo docker images
sudo docker run --name=kyle-docker -d mysql/mysql-server:latest
docker ps
apt-get install mysql-client
sudo apt-get install mysql-client
sudo docker logs kyle-docker-vm
sudo docker logs kyle-docker
sudo docker exec -it kyle-docker bash
docker images
docker login
docker pull python: latest
docker pull python
docker images
docker tag kylelamberton1/python/latest
docker ps -a
docker compose --version
sudo apt update
sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
mkdir docker-compose-nginx-tutorial && cd $_
docker-compose ps
docker-compose up -d
docker-compose ps
curl localhost:32768
curl localhost:49153
docker-compose up -d --scale nginx=3
docker-compose ps
docker-compose down --rmi all
docker-compose --help
git clone https://gitlab.com/qacdevops/python-front-and-back
cd python-front-and-back
cd ..
git clone https://gitlab.com/qacdevops/python-front-and-back
cd tmp
git clone https://gitlab.com/qacdevops/python-front-and-back
cd python-front-and-back
docker-compose up
docker-compose up -d
docker-compose logs
docker-compose logs -f
git checkout red-background
docker-compose build
docker-compose up -d
docker-compose down --rmi all
cd..
cd ..
cd docker_volumes
cd tmp
cd docker_volumes
cd duo-task
cd ..
cd duo_task
cd ..
cd KYLELAMBERTON1
ls
ls -a
cd home
cd duo-task
cd ..
cd duo-task
mkdir docker-compose
cd home
mkdir docker-compose
docker ps
cd ..
git clone https://gitlab.com/qacdevops/python-front-and-back
cd home
git clone https://gitlab.com/qacdevops/python-front-and-back
cd docker_volumes
cd ..
docker-compose up -d
cd docker-compose-nginx-tutorial
docker-compose up -d
curl localhost:80
tree
sudo apt install tree
tree
curl localhost
docker compose ps
docker-compose ps
ls
cat nginx/nginx.com
cat nginx/nginx.conf
docker  ps
cd ..
mkdir docker-compose-nginx-tutorial && cd $_
docker-compose up -d 
-- remove-orphans
docker-compose ps
docker-compose down --rmi all
docker-compose up -d
docker-compose ps
curl localhost 49158
curl localhost:49158
docker-compose up -d --scale nginx=3
docker-compose up -d --remove-orphans
docker-compose ps
docker-compose down --rmi all
cd ..
cd docker-compose-tutorial
mkdir nginx
docker-compose up -d
cd ..
git clone git@gitlab.com:qacdevops/duo-task.git
cd duo-task
docker-compose up -d
docker compose up -d
docker-compose up -d
docker-compose down --rmi all
cd ..
cd docker-compose-tutorial
docker-compose down --rmi all
cd ..
cd duo-task
docker-compose up -d
version: "3.8"
services:
docker-compose up -d
docker swarm init
docker swarm join --token SWMTKN-1-2qgjp70wcbfssv7mhh2miikxg5mfin15cjjfmlpa96sk50rjkw-ahssf1mkqkznr88yl83cde7zp 10.0.0.9:2377
docker service create --name nginx --publish 80:80 nginx:latest
curl http://swarm-master
curl http://20.68.60.155
docker service rm nginx
docker swarm init
docker swarm leave
docker node ls
docker service ls
docker node rm
docker swarm leave --force
docker swarm init
docker node ls
docker service create --name python-http-server bobcrutchley/python-http-server:latest
docker service update --replicas 4 --publish-add 80:9000  python-http-server
curl http://20.68.60.155/info.json
docker service rm python-http-server
docker swarm leave
docker swarm leave --force
cd duo-task
docker swarm init
docker images
docker service create --name duoswarm duo-task_flask-app:latest
docker service update --replicas 4 --publish-add 80:9000 duoswarm
