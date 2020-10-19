FROM centos:8

MAINTAINER "priyansh9879" <priyanshmagotra444@outlook.com>

RUN yum install wget --nogpgcheck -y && yum install net-tools --nogpgcheck -y && cd /tmp/; wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O ~/anaconda.sh; cd && bash ~/anaconda.sh -b -u -p $HOME/anaconda -f && eval "$($HOME/anaconda/bin/conda shell.bash hook)" && conda init && conda update conda -y && conda update anaconda -y && rm -rf ~/anaconda.sh



