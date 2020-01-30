FROM debian:latest

RUN apt-get -y update
RUN apt-get install -y curl nano wget openssh-server htop slurm apt-utils screen


WORKDIR /data

RUN wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.15.2.jar
RUN mv /data/craftbukkit-1.15.2.jar /data/craft1.15.jar
RUN echo "eula=true" > eula.txt

RUN wget sn.gurdil.be/java.tar.gz
RUN mkdir /opt/java
RUN tar -C /opt/java -xzf java.tar.gz
RUN ln -s -f /opt/java/*/bin/java /usr/bin/java
RUN rm *.tar.gz

RUN echo "\#!/bin/bash" > start.sh
RUN echo "java -Xms512M -Xmx512M -jar craft1.15.jar nogui" > start.sh
RUN chmod +x start.sh

EXPOSE 25565

CMD ping google.com -n 60 > /dev/null
