#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Metrics running on Ubuntu
#
# Made by Yurii Kazabekov  07-March-2020
#---------------------------------------------------------------------------

FROM ubuntu:bionic

# Update system packages and install python
RUN apt-get -y update && apt-get -y install python3 gcc python3-dev python3-pip

# Install psutils
RUN pip3 install psutil

# Copy script to container
COPY ./metrics /usr/local/bin

# Allow it to execute
RUN chmod 744 /usr/local/bin/metrics

# Start the script with args
ENTRYPOINT ["metrics"]

