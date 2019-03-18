FROM centos
#scratch
#ADD centos-7.4.1708-docker.tar.xz /

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170911"

RUN  yum update -y  &&  yum install -y yum-utils && \
     yum install -y https://centos7.iuscommunity.org/ius-release.rpm
     
RUN yum -y groupinstall "Development Tools"   
RUN  yum -y install rh-python36

#python36u python36u-libs python36u-devel python36u-pip python-pip
RUN yum install unixODBC unixODBC-devel gcc-c++ python-devel

#RUN pip install setuptools
RUN pip install pyodbc
RUN echo "root:Docker!" | chpasswd

#USER 1001
#CMD ["/bin/bash"]

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
