# Use an official Ubuntu base image
FROM ubuntu:24.04

# Install prerequisites
RUN apt-get update && \
    apt-get install -y \
    curl \
    apt-transport-https \
    gnupg \
    lsb-release \
    unzip \
    git

# Set desired versions
ENV HAULER_VERSION="1.2.1"
RUN curl -sfL https://get.hauler.dev | bash

# Verify installation
RUN hauler version
