FROM ubuntu:16.04
MAINTAINER Eduardo Arango <carlos.arango.gutierrez@correounivalle.edu.co>

RUN apt-get update
RUN apt-get install -y bash wget build-essential gcc time hdparm sudo
RUN wget 'http://www.iozone.org/src/current/iozone3_465.tar' 
RUN tar -xf iozone3_465.tar
WORKDIR /iozone3_465/src/current/
RUN make linux-AMD64
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo "docker ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/docker && chmod 0440 /etc/sudoers.d/docker
USER docker
CMD bash

