FROM ubuntu:22.04

RUN apt update \
    && apt upgrade -y \
    && apt install -y \
        dotnet-sdk-8.0 \
        wget \
    && apt clean all
