FROM gradle:4.8.1-jdk8

USER root

RUN apt-get update && \
    apt-get install -y sudo && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://download.jetbrains.com/idea/ideaIC-2018.1.5-no-jdk.tar.gz -O /tmp/idea.tar.gz -q && \
    mkdir -p /usr/share/intellij && \
    tar -xf /tmp/idea.tar.gz --strip-components=1 -C /usr/share/intellij && \
    rm /tmp/idea.tar.gz

CMD /usr/share/intellij/bin/idea.sh
