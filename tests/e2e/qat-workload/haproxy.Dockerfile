FROM registry.access.redhat.com/ubi8/ubi 

RUN dnf -y update && \
    dnf install -y openssl qatlib qatengine haproxy
COPY tls-combined.pem /etc/ssl/certs/tls.pem
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
ENTRYPOINT ["/bin/bash"]