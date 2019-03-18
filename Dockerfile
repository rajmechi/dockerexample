FROM scratch
ADD centos-7.4.1708-docker.tar.xz /

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170911"

RUN /bin/bash yum update -y  && /bin/bash yum install -y yum-utils && \
    /bin/bash yum install https://centos7.iuscommunity.org/ius-release.rpm && \
    /bin/bash yum -y groupinstall development && \
    /bin/bash yum -y install python36u

CMD ["/bin/bash"]
