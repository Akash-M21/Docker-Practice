FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    openssh-client sshpass git curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir ansible boto3 botocore

WORKDIR /ansible

COPY . .

CMD ["ansible", "--version"]

