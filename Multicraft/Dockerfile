FROM debian:latest

RUN apt-get -y update
RUN apt-get install -y curl nano wget openssh-server htop slurm apt-utils screen


WORKDIR /data

RUN wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.15.2.jarr
RUN wget https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar && mv server.jar vanilla1.15.2.jar
RUN wget https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar
RUN wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar && mv server.jar minecraft1.15.2.jar
RUN wget https://raw.githubusercontent.com/Gruniek/MyDocker/master/Multicraft/updater.sh && chmod +x updater.sh
RUN echo "eula=true" > eula.txt

RUN wget sn.gurdil.be/java.tar.gz
RUN mkdir /opt/java
RUN tar -C /opt/java -xzf java.tar.gz
RUN ln -s -f /opt/java/*/bin/java /usr/bin/java
RUN rm *.tar.gz

RUN echo "\#!/bin/bash" > start.sh
RUN echo "java -Xms512M -Xmx512M -jar $1 nogui" > start.sh
RUN chmod +x start.sh

EXPOSE 25565

CMD ping google.com -n 60 > /dev/null
#CMD java -Xms512M -Xmx512M -jar /data/*.java nogui
