#docker build -t foo . && docker run -it foo

FROM debian:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y proftpd curl nano wget openssh-server htop slurm apt-utils screen vim
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

RUN wget https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
RUN wget https://raw.githubusercontent.com/Gruniek/MyDocker/master/MyOVPN/run.sh
RUN chmod 777 openvpn-install.sh run.sh
#RUN cd /dev && mkdir net && mknod net/tun c 10 200 && chmod 0666 net/tun
RUN ./run.sh
EXPOSE 1194

CMD ping google.com -n 60 > /dev/null
