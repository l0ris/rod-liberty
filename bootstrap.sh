#!/bin/bash
systemctl stop NetworkManager
systemctl disable NetworkManager
sudo yum clean all
sudo yum install epel-release
sudo yum update -y
sudo yum install -y https://www.rdoproject.org/repos/rdo-release.rpm
sudo yum install -y openstack-packstack
packstack --allinone