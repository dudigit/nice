#!/bin/bash -eux

# Install Ansible.
yum -y install ansible
yum -y install curl

#Disable IPv6
echo "options ipv6 disable=1" >> /etc/modprobe.d/ipv6.conf
chkconfig ip6tables off > /dev/null 2>&1
echo "NETWORKING_IPV6=no" >> /etc/sysconfig/network
echo "net.ipv6.conf.all.disable_ipv6 = 1" >>  /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf

