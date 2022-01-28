FROM oraclelinux:8
LABEL maintainer="Developer Advocate"
RUN yum update -y \
 && yum -y install python39 python39-pip git.x86_64 \
 && mkdir -p /opt/refinitiv \
 && cd /opt/refinitiv \
 && git clone https://github.com/refinitiv/websocket-api \
 && pip3 install requests \
 && pip3 install websocket-client \
 && cd websocket-api/Applications/Examples/RDP/python 
WORKDIR /opt/refinitiv/websocket-api/Applications/Examples/RDP/python
CMD /bin/sh

