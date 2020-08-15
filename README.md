### start an ansible-runner container
```
$ docker build . -t ansible-runner:v1 -f ansible-runner-v1

$ docker run -d -it --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/runner/projects ansible-runner:v1 bash
```

### start a debian container
```
docker build . -t debian:dev -f debian_df

docker run -d -it -v C:\\Users\\FANJEL\\docker-volumn:/root/docker-volumn debian:dev bash
```

### start a centos8 container
```
docker build . -t centos8:dev -f centos_df

docker run -d -it -v C:\\Users\\FANJEL\\docker-volumn:/root/docker-volumn debian:dev bash
```