FROM centos:7

MAINTAINER "priyansh9879" <priyanshmagotra444@outlook.com>

RUN yum install wget curl net-tools vim httpd php --nogpgcheck -y && yum clean all

RUN echo "rm -rf /var/run/httpd" >> /root/.bashrc && echo "/usr/sbin/httpd" >> /root/.bashrc

CMD /usr/sbin/httpd -D FOREGROUND

EXPOSE 80
