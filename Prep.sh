#!/bin/bash

# View IP and Interfaces 
ip a
ifconfig
ip route 

# Update system (Ubuntu)
sudo apt update && sudo apt upgrade    

# See Logged-in Users and Open files as them 
who
lsof
lsof -u [username]

# File Permissions
chmod 755 file
chown user:group file

#Find Files
find / -name filename
cp src dst
grep "string" file
dd if=/dev/zero of=testfile bs=1M count=10


#Connectivity/Troubleshooting 
ping [host]
nmap -sS [host] #TCP SYN Scan
traceroute [host]
mtr [host] #My Traceroute


#Pass a OpenVPN config 
sudo openvpn --config config.ovpn

#Update Packages 
sudo apt install [package]
apt download [package]
dpkg -i package.deb

# Compression/ Uncompression 
tar -xvf file.tar
zip file.zip file
unzip file.zip

#Enable IPv4 Forwarding 
echo 1 > /proc/sys/net/ipv4/ip_forward

#IP Tables Manipulation 
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables-save > /etc/iptables/rules.v4

#Active Connections 
netstat -tulnp
ss -tuln

#Mount File Systems 
mount /dev/sdX /mnt
fsck /dev/sdX






