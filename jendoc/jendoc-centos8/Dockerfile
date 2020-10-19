FROM priyansh9879/centos-systemd:8

ENV container docker

MAINTAINER "priyansh9879" <priyanshmagotra444@outlook.com>

# for jenkins
RUN yum install wget --nogpgcheck -y && yum install https://mirrors.huaweicloud.com/java/jdk/8u171-b11/jdk-8u171-linux-x64.rpm -y && wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo && rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key && echo "jenkins ALL=(ALL)  NOPASSWD:ALL" >> /etc/sudoers && yum install net-tools git python36 --nogpgcheck -y && yum install jenkins --nogpgcheck -y

# for docker
RUN yum install passwd wget net-tools --nogpgcheck -y && echo -e "redhat\nredhat" | passwd root && echo "[docker-ce]" > /etc/yum.repos.d/docker-ce.repo; echo "name=Softwares from docker Repo" >> /etc/yum.repos.d/docker-ce.repo; echo "baseurl=https://download.docker.com/linux/centos/7/x86_64/stable/" >> /etc/yum.repos.d/docker-ce.repo; echo "gpgcheck=0" >> /etc/yum.repos.d/docker-ce.repo && yum clean all && yum install docker-ce-18.09.1-3.el7 --nogpgcheck -y && systemctl restart docker; systemctl enable docker && yum clean all

# for httpd
# RUN yum install httpd --nogpgcheck -y; sed -i 's/80/81/g' /etc/httpd/conf/httpd.conf; yum clean all; systemctl enable httpd.service

EXPOSE 80 443 8080

CMD ["/usr/sbin/init"]
CMD java -jar /usr/lib/jenkins/jenkins.war
