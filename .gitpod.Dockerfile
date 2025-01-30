FROM gitpod/workspace-full

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 11.0.14-zulu && \
    sdk default java 11.0.14-zulu"

RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
    sudo apt-get install -y nodejs

RUN npm install -g expo-cli

ENV ANDROID_HOME=/home/gitpod/android-sdk
ENV PATH=${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools
