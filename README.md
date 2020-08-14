### start an ansible-runner container
```
$ docker build . -t ansible-runner:v1 -f ansible-runner-v1

$ docker run -d -it --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/runner/projects ansible-runner:v1 bash
```

### start a debian container v1
```
$ docker build . -t debian:v1 -f debian-v1

$ docker run -d -it --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/root/projects debian:v1 bash
```

### start a debian container v2
```
$ docker build . -t debian:v2 -f debian-v2

$ docker run -d -it --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/root/projects debian:v2 bash
```

### start a ubuntu container v1
```
$ docker build . -t ubuntu:v1 -f ubuntu-v1

$ docker run -d -it --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/root/projects ubuntu:v1 bash
```