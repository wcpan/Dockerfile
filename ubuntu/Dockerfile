FROM ubuntu:focal

RUN apt update; \
    apt install curl less wget vim dstat net-tools iperf3 telnet rsync mtr iputils-ping nghttp2 iptables lsof man nodejs openjdk-11-jdk openssh-server awscli \
                tcpdump bash-completion sysstat; \
    rm -rf /var/lib/apt/lists/*
