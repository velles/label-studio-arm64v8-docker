FROM arm64v8/ubuntu:20.04

SHELL ["/bin/bash", "-c"]

WORKDIR /label-studio
ENV HOME=/label-studio


# Update and install required tools
RUN apt-get update -y && apt-get upgrade -y

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 libpq-dev  -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
  wget git sudo vim git-lfs \
  software-properties-common

# Install Python 3.8
RUN add-apt-repository -y ppa:deadsnakes/ppa && apt-get install -y python3-pip

RUN pip install label-studio

EXPOSE 8080
