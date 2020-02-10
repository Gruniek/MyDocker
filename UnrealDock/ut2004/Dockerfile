FROM debian:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y proftpd curl nano wget openssh-server htop slurm apt-utils screen vim
RUN dpkg --add-architecture i386 && apt update &&  apt -y install mailutils postfix curl wget file tar bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /data

RUN wget http://files.linuxgsm.com/UnrealTournament2004/ut2004-server-3369-2-ultimate-linux.tar.bz2
RUN tar -xvf ut2004-server-3369-2-ultimate-linux.tar.bz2 && rm -rf ut2004-server-3369-2-ultimate-linux.tar.gz
RUN echo "SRVER-9YPA9-FUPRA-8T3DQ" > /data/System/cdkey
RUN chmod +x /data/System/ucc-bin
RUN echo "\#!/bin/bash" > /data/run.sh
RUN echo "./System/ucc-bin server DM-Pressure?game=BotPack.DeathMatchPlus?Mutator=Instagib?AdminPassword=mypass ini=ut.ini log=ut.log -nohomedir " > run.sh
RUN chmod +x /data/run.sh

EXPOSE 7777 80 8080 7778 7787 28902

CMD ping google.com -n 60 > /dev/null
