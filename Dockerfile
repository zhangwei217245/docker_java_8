
FROM ubuntu:xenial
MAINTAINER zhangwei217245
# Installing Basic softwares
RUN apt update -y; \
    apt upgrade -y; \
    apt install -y curl wget axel which tar add-apt-key openssh-server openssh-client python-software-properties software-properties-common

# installing Java
RUN add-apt-repository -y ppa:webupd8team/java
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN apt-get update -y; \
    apt-get install -y oracle-java8-installer ant maven gradle
