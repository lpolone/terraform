#!/bin/bash

# Set hostname
echo "[TASK 1] Setting hostname"
hostname ec2-terraformexample
echo "ec2-terraformexample" > /etc/hostname
echo "127.0.0.1 ec2-terraformexample" /etc/hosts

# Install initial packages
echo "[TASK 2] Installing initial packages"
sudo apt-get install -y vim wget net-tools unzip telnet ntpdate >/dev/null 2>&1

