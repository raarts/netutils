FROM ubuntu
MAINTAINER Giorgio Regni <gr@scalilty.com>

RUN apt-get update
RUN apt-get install -y iperf iftop tcpdump  bmon  sysstat telnet vim wget curl strace netcat dnsutils mtr-tiny net-tools \
  iputils-ping traceroute tcptraceroute nmap openssh-client iperf

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY . /root/scripts

CMD [ "/bin/bash" ]
