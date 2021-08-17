#!/usr/bin/env bash

# prepair VPS for running custom config at first boot

#update Centos
echo 'assumeyes=1' >> /etc/yum.conf \
&& sudo yum --disablerepo=\* --enablerepo=base,updates update \
&& sudo yum update

# install epel release
sudo yum install epel-release
sudo yum update

# install Development Tools
yum group install "Development Tools"

# install nano
sudo yum install nano

# install IP set
yum install ipset

# remove startup
rm -f $0

# reboot
sudo reboot now