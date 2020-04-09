FROM alpine:latest

RUN apk add --no-cache curl wget && \
  apk add --no-cache --virtual .run-deps ca-certificates
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
  chmod +x /usr/local/bin/kubectl
