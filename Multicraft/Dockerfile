FROM debian:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y proftpd curl nano wget openssh-server htop slurm apt-utils screen vim
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

RUN wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.15.2.jar
RUN wget https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar && mv server.jar vanilla1.15.2.jar
RUN wget https://cdn.getbukkit.org/spigot/spigot-1.15.2.jar
RUN wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar && mv server.jar minecraft1.15.2.jar
RUN echo "eula=true" > eula.txt

RUN wget sn.gurdil.be/java.tar.gz && mkdir /opt/java && tar -C /opt/java -xzf java.tar.gz && ln -s -f /opt/java/*/bin/java /usr/bin/java && rm *.tar.gz

RUN wget https://raw.githubusercontent.com/Gruniek/MyDocker/master/Multicraft/multicraft.sh && chmod +x multicraft.sh && ln -s /data/multicraft.sh /bin/multicraft

EXPOSE 25565 8123 8888 21 22

CMD ping google.com -n 60 > /dev/null
#CMD java -Xms512M -Xmx512M -jar /data/*.java nogui
