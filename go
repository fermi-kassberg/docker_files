FROM golang:1.15-buster as build
RUN echo "export PS1='[\e[92mgo \D{%m-%d} \e[0m\w] # '" >> /root/.bashrc

## This results in a single layer image
## this change $PATH, go will not in $PATH
#FROM scratch
#COPY --from=build / /
#WORKDIR /root