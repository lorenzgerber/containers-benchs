FROM ubuntu:16.04
MAINTAINER lorenzottogerber@gmail.com

# Satisfy deps
RUN apt-get update && \
    apt-get install -y gcc make curl iputils-ping && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/* && \
    rm -rf /var/lib/apt/lists/* && \
    rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup   

# Download netperf
RUN curl -LO https://github.com/HewlettPackard/netperf/archive/netperf-2.7.0.tar.gz && tar -xzf netperf-2.7.0.tar.gz 
RUN cd netperf-netperf-2.7.0 && ./configure && make && make install

