FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-18

# Install essential tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install Expo CLI
RUN npm install -g expo-cli

# Install Android SDK
ENV ANDROID_HOME=/opt/android-sdk
RUN mkdir -p ${ANDROID_HOME}

# Set up workspace
WORKDIR /workspaces/app
