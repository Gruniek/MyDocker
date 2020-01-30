FROM debian:jessie

RUN apt-get -y update
RUN apt-get install -y curl wget openssh-server htop slurm apt-utils screen


WORKDIR /data

RUN wget https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.15.2.jar
RUN mv /data/craftbukkit-1.15.2.jar /data/craft.jar
RUN echo "eula=true" > eula.txt

RUN wget sn.gurdil.be/java.tar.gz
RUN mkdir /opt/java
RUN tar -C /opt/java -xzf java.tar.gz
RUN ln -s -f /opt/java/*/bin/java /usr/bin/java
RUN rm *.tar.gz


EXPOSE 25565

CMD ping google.com -n 60 > /dev/null
CMD java -Xms512M -Xmx512M -jar /data/*.java nogui
