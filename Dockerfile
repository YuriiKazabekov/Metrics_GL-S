#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Metrics running on Ubuntu
#
# Made by Yurii Kazabekov  07-March-2020
#---------------------------------------------------------------------------

FROM ubuntu:bionic

RUN apt-get -y update
RUN apt-get -y install python3
RUN apt-get -y install gcc python3-dev
RUN apt-get -y install python3-pip
RUN pip3 install psutil
RUN apt-get -y install nano
RUN mkdir /etc/myscripts
COPY metrics /etc/myscripts
RUN chmod 744 /etc/myscripts/metrics



