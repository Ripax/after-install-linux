#!/bin/sh
# Author - Anupam Biswas | HTMLDigger
# Date : Apr 11, 14:12
clear
/bin/cat <<'HTMLDigger'
*****************************************
*    ╦ ╦╔╦╗╔╦╗╦  ╔╦╗┬┌─┐┌─┐┌─┐┬─┐       *
*    ╠═╣ ║ ║║║║   ║║││ ┬│ ┬├┤ ├┬┘       *
*    ╩ ╩ ╩ ╩ ╩╩═╝═╩╝┴└─┘└─┘└─┘┴└─.in    *
*****************************************
HTMLDigger
tput setaf 3


if [ $? != 0 ] 
then
  echo "This program must be run as root. run again as root"
  exit 1
fi
read -r -p "This script make change your system's network configurations files, I am not responsible for any damage, Do you agree with it? [y/N] " check

case "$check" in
[nN][oO]|[nN])
echo "Thank you!! have a nice day ;) don't forget subscribe TechChip Youtube Channel"
exit 1
;;
*)
echo ""
echo "First you need to be update your system"
read -p "Do you want update your system (Y/N)?" ans

if [ $ans = "y" ] || [ $ans = "Y" ]
then
  echo "Updating package index.."
  sudo apt-get update -y
  echo "Updating old packages.."
  sudo apt-get upgrade -y
fi
echo ""
echo " Downloading and installing necessary packages."