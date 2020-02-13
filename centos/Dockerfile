FROM centos:7
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
    yum install -y epel-release centos-release-scl && \
    yum install -y @development devtoolset-8 openssh-server vim dstat net-tools bind-utils iperf sysbench telnet rsync mtr \
        iputils nghttp2 python34-pip bash-completion tcpdumphtop htop sysstat nethogs iftop \
        lsof screen psmisc syslog-ng man mysql nodejs git java-11-openjdk-devel java-11-openjdk-headless && \
    pip3.4 install --upgrade pip awscli && \
    npm i -g pm2 && \
    yum clean all
