FROM ubuntu

ENV TZ=Asia/Taipei

RUN apt update; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone; \
    apt install -y curl less wget vim dstat net-tools iperf3 telnet rsync mtr iputils-ping nghttp2 iptables lsof man openssh-server awscli dnsutils \
                tcpdump bash-completion sysstat sysbench nodejs openjdk-17-jdk-headless git docker.io; \
    rm -rf /var/lib/apt/lists/*
