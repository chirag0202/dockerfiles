FROM priyansh9879/centos-systemd:8

MAINTAINER "priyansh9879" <priyanshmagotra444@outlook.com>

RUN yum install passwd wget net-tools --nogpgcheck -y && echo -e "redhat\nredhat" | passwd root && echo "[docker-ce]" > /etc/yum.repos.d/docker-ce.repo; echo "name=Softwares from docker Repo" >> /etc/yum.repos.d/docker-ce.repo; echo "baseurl=https://download.docker.com/linux/centos/7/x86_64/stable/" >> /etc/yum.repos.d/docker-ce.repo; echo "gpgcheck=0" >> /etc/yum.repos.d/docker-ce.repo && yum clean all && yum install docker-ce-18.09.1-3.el7 --nogpgcheck -y && systemctl restart docker; systemctl enable docker && yum clean all

EXPOSE 80 443

CMD ["/usr/sbin/init"]
