FROM ubuntu

RUN apt-get update
RUN apt-get -y dist-upgrade

RUN apt-get -y install git curl vim ruby ruby-dev build-essential
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN curl -L https://raw.github.com/stanleyz/vim.conf/master/bootstrap | bash

RUN echo "source /etc/profile" >> ~/.bashrc
RUN /bin/bash -c "source /etc/profile && rvm install ruby"

RUN mkdir -p /tmp/build/
ADD java /tmp/build/java/
RUN /bin/bash /tmp/build/java/install.sh

RUN apt-get -y install man ftp
