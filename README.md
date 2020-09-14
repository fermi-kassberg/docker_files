### start an ansible-runner container
```
$ docker build . -t ansible-runner:v1 -f ansible-runner-v1

$ docker run -d -it --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/runner/projects ansible-runner:v1 bash
```

### docker build
```
docker build . -t debian:dev -f debian_df

```

#### demo
```
docker run -d -it -v C:\\Users\FANJEL\volumn:/root/volumn debian:dev bash

docker rmi $(docker images -f “dangling=true” -q)

docker run --privileged --name df-docker -d docker:17.06.0-dind
docker run --privileged --name df-docker -d docker:stable-dind
```

#### dind
```
docker run --rm -it --link df-docker:docker docker sh
```

#### python:dev dind does NOT work
```
docker run --rm -it --link df-docker python:dev bash ?
```


#### python:dev dood work!
```
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock python:dev bash
```
#### make powershell dumb
```
Set-PSReadlineOption -BellStyle None
```

####
```
mysql> select Host,User,Plugin from mysql.user;

CREATE USER 'native'@'%' IDENTIFIED WITH mysql_native_password BY 'fanjielei';

CREATE DATABASE DEMO CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL ON `DEMO`.* TO 'native'@'%' WITH GRANT OPTION;


docker run -it --rm -d -p 3306:3306 -v C:\Users\FANJEL\mysql:/var/lib/mysql -v C:\Users\FANJEL\dockerfiles\configs\mysql:/etc/mysql -e MYSQL_ROOT_PASSWORD=fanjielei mysql:8.0 --default-authentication-plugin=mysql_native_password

# without conf.d
docker run -it --rm -d -p 3306:3306 -v C:\Users\FANJEL\mysql:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=fanjielei mysql:8.0 --default-authentication-plugin=mysql_native_password  --innodb_use_native_aio=0

# without /var/lib/mysql
docker run -it --rm -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=fanjielei mysql:8.0 --default-authentication-plugin=mysql_native_password

```