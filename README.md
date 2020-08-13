### start an ansible-runner container
```
$ docker build . -t ansible-runner:jfa-v1 
$ docker run -d -it --name ansible-runner --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/runner/projects ansible-runner:jfa-v1 bash
```

### start a debian container
```
$ docker build . -t debian:jfa-v1 
$ docker run -d -it --name debian buster-backports --mount type=bind,source=C:\\Users\\FANJEL\\docker-volumn,target=/root/projects debian:jfa-v1 bash
```