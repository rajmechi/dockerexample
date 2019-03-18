FROM centos
#scratch
#ADD centos-7.4.1708-docker.tar.xz /

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170911"

RUN  yum update -y  &&  yum install -y yum-utils && \
     yum -nstall -y https://centos7.iuscommunity.org/ius-release.rpm
     
     
#&& \
#yum -y groupinstall development      
#RUN  yum  -y install -y python36u python36u-libs python36u-devel python36u-pip

CMD ["/bin/bash"]
