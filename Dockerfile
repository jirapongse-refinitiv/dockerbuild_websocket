FROM centos:centos7
LABEL maintainer="Refinitiv Active Help Service"
RUN yum update -y install \
 && yum -y install python3 git.x86_64 \
 && mkdir -p /opt/refinitiv \
 && cd /opt/refinitiv \
 && git clone https://github.com/refinitiv/websocket-api \
 && pip3 install requests \
 && pip3 install websocket-client \
 && cd websocket-api/Applications/Examples/RDP/python 
WORKDIR /opt/refinitiv/websocket-api/Applications/Examples/RDP/python
CMD /bin/sh

