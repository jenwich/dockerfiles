FROM alpine:latest

COPY . /root

RUN apk update && apk add --no-cache curl \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl \
    && cp /root/kubeconf-do-get.sh /usr/local/bin/kubeconf-do-get \
    && cp /root/kube-deploy.sh  /usr/local/bin/kube-deploy