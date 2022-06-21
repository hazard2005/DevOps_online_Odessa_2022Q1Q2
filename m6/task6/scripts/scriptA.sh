#!/bin/bash

#vars
var_all="--all"
var_target="--target"

#functions
function all
{
echo "Enter your current subnet with mask :"
echo "Example: 192.168.1.0/24"
read SUBNET
nmap -sn $SUBNET
}
#
function target
{
ss -tulnp | grep LISTEN
}
#
function empty_arguments
{
echo "You need run this script with following keys:"
echo -e "The""\033[32;1;40m --all\033[0m" "key displays the IP addresses and symbolic names of all hosts in the current subnet"
echo -e "The""\033[32;1;40m --target\033[0m" "key displays a list of open system TCP ports"
}

#if [ $0 = "$0" ]; then
#     empty_arguments
if [[ $1 == "--all" ]]; then
     all
elif [[ $1 == "--target" ]]; then 
     target
else empty_arguments
fi