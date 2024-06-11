FROM oraclelinux:8
LABEL maintainer="Developer Advocate"
RUN yum update -y \
 && yum -y install python39 python39-pip git.x86_64 \
 && yum clean all \
 && mkdir -p /opt/lseg \
 && cd /opt/lseg \
 && git config --global http.sslVerify false \
 && git clone https://github.com/refinitiv/websocket-api \
 && pip3 install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org requests \
 && pip3 install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org websocket-client \
 && cd websocket-api/Applications/Examples/RDP/python 
WORKDIR /opt/lseg/websocket-api/Applications/Examples/RDP/python
CMD /bin/sh

