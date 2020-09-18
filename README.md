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

#### 
```
FROM mysql:latest as builder

# That file does the DB initialization but also runs mysql daemon, by removing the last line it will only init
RUN ["sed", "-i", "s/exec \"$@\"/echo \"not running $@\"/", "/usr/local/bin/docker-entrypoint.sh"]

# needed for intialization
ENV MYSQL_ROOT_PASSWORD=root

COPY setup.sql /docker-entrypoint-initdb.d/

# Need to change the datadir to something else that /var/lib/mysql because the parent docker file defines it as a volume.
# https://docs.docker.com/engine/reference/builder/#volume :
#       Changing the volume from within the Dockerfile: If any build steps change the data within the volume after
#       it has been declared, those changes will be discarded.
RUN ["/usr/local/bin/docker-entrypoint.sh", "mysqld", "--datadir", "/initialized-db"]

FROM mysql:latest

COPY --from=builder /initialized-db /var/lib/mysql

```
```
https://github.com/iamdvr/prepopulated-mysql-container-example
```