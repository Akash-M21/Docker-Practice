FROM alpine:3.19

RUN apk add --no-cache \
    bash curl git openssl jq yq helm

RUN curl -LO "https://dl.k8s.io/release/v1.29.0/bin/linux/amd64/kubectl" \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/

WORKDIR /k8s

CMD ["kubectl", "version", "--client"]
