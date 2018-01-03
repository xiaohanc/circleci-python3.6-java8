# import python3.6 from circleci with browsers and pip preinstalled
FROM circleci/python:3.6-browsers

RUN sudo apt-get install xsel
# Setup oracle java 8
RUN sudo mkdir /opt/jdk

WORKDIR /opt

RUN sudo wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz

RUN sudo tar -zxf jdk-8u152-linux-x64.tar.gz -C /opt/jdk

RUN sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_152/bin/java 100
RUN sudo update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_152/bin/javac 100

WORKDIR /