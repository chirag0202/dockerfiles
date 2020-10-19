FROM centos:8

MAINTAINER "priyansh9879" <priyanshmagotra444@outlook.com>

RUN yum install wget --nogpgcheck -y && yum install net-tools --nogpgcheck -y && cd /tmp/; wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh; cd && bash ~/miniconda.sh -b -u -p $HOME/miniconda -f && eval "$($HOME/miniconda/bin/conda shell.bash hook)" && conda init && exec bash && conda update conda -y && conda update anaconda -y && rm -rf $HOME/miniconda.sh
