FROM rastasheep/ubuntu-sshd as ubuntu-leobastiani

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y sudo
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y build-essential
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools

RUN useradd -m leobastiani && echo "leobastiani:root" | chpasswd && adduser leobastiani sudo
ADD id_rsa /home/leobastiani/.ssh/id_rsa
ADD id_rsa.pub /home/leobastiani/.ssh/id_rsa.pub