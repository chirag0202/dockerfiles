FROM centos:8

ENV container docker
MAINTAINER "priyansh9879" <priyanshmagotra444@outlook.com>

RUN yum install wget --nogpgcheck -y && yum install https://mirrors.huaweicloud.com/java/jdk/8u171-b11/jdk-8u171-linux-x64.rpm -y && wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo && rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key && echo "jenkins ALL=(ALL)  NOPASSWD:ALL" >> /etc/sudoers && yum install net-tools git python36 --nogpgcheck -y && yum install jenkins --nogpgcheck -y

CMD java -jar /usr/lib/jenkins/jenkins.war
