FROM debian:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y proftpd curl nano wget openssh-server htop slurm apt-utils screen vim
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

RUN wget https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
RUN chmod 777 openvpn-install.sh
EXPOSE 1194

CMD ping google.com -n 60 > /dev/null
