FROM index.docker.io/pdipal696/tanzu-custom-builder-lite:latest

USER root
RUN apt update -y && apt install -y python3-pip && apt install -y krb5-user && apt install -y libkrb5-dev && rm -rf /var/lib/apt/lists/*

USER cnb
