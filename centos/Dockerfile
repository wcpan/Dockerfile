FROM centos:7
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
    yum install -y epel-release centos-release-scl https://repo.mysql.com/mysql80-community-release-el7-3.noarch.rpm && \
    sed -i 's/enabled=1/enabled=0/' /etc/yum.repos.d/mysql-community.repo && \
    yum update -y && \
    yum install --enablerepo=mysql80-community -y @development wget devtoolset-8 openssh-server vim dstat net-tools bind-utils iperf sysbench telnet rsync mtr \
        iputils nghttp2 python34-pip bash-completion tcpdumphtop htop sysstat nethogs iftop \
        lsof screen psmisc syslog-ng man nodejs git java-11-openjdk-devel java-11-openjdk-headless openssl socat mysql-community-client redis stress-ng glibc-static zlib-devel pam-devel openssl-devel && \
    wget https://www.yourkit.com/download/docker/YourKit-JavaProfiler-2019.8-docker.zip -P /tmp/ && \
    unzip /tmp/YourKit-JavaProfiler-2019.8-docker.zip -d /usr/local && \
    rm -f /tmp/YourKit-JavaProfiler-2019.8-docker.zip && \
    pip3.4 install --upgrade pip awscli && \
    npm i -g pm2 && \
    echo "complete -C aws_completer aws" >> ~/.bashrc && \
    #    echo "build openssh-hpn" && \
    #    wget https://github.com/rapier1/openssh-portable/archive/master.zip && \
    #    unzip master.zip && \
    #    cd openssh-portable-master && \
    #    autoreconf && \
    #    ./configure --with-kerberos5 --with-pam  --sysconfdir=/etc/ssh --bindir=/usr/bin --sbindir=/usr/sbin && \
    #    make; make install && \
    #    cd ..; rm -rf master.zip openssh-portable-master && \
    yum clean all
