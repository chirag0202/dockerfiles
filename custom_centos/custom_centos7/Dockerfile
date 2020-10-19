FROM centos:7

MAINTAINER "priyansh9879" <priyanshmagotra444@outlook.com>

RUN mkdir -p /var/run/sshd

RUN yum install epel-release --nogpgcheck -y && yum install vim wget curl net-tools openssh-server openssh-clients --nogpgcheck -y && ssh-keygen -A

COPY ./sshd_config /etc/ssh/sshd_config

RUN echo "root:redhat" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]
