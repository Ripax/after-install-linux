#!/bin/sh
# Author - Anupam Biswas

resize -s 25 95
printf '\e]11;#2E3436\a'

cp /home/rion/HTMLDiggerPictures/.icon.png $HOME/Pictures/.icon.png
clear

/bin/Cat <<'HTMLDigger'
*****************************************
*    ╦ ╦╔╦╗╔╦╗╦  ╔╦╗┬┌─┐┌─┐┌─┐┬─┐       *
*    ╠═╣ ║ ║║║║   ║║││ ┬│ ┬├┤ ├┬┘       *
*    ╩ ╩ ╩ ╩ ╩╩═╝═╩╝┴└─┘└─┘└─┘┴└─.in    *
*****************************************
HTMLDigger

echo -e "*******************************"
echo -e "Your date & time is "
date
echo -e "********************************"

echo -e "\033[1;31m your working server name is\033[Om :\e[5m ${UNAME}.${DIST}.${SARCH} \e[25m"

echo -e "\e[2m info \e[Om:"
echo ""
echo "        name         $USER"
echo "        host         $HOSTNAME"
echo "        discipline   $DEFAULT_DISCIPLINE"
echo "        site         ${MPC_SITE}"
echo "        Nuke Version ${NUKE_VERSION}"
echo ""
echo ""

echo ""
echo -e "nuke idle checker run in \e[lm ${HOSTNAME} \e[21;0m by \e[lm ${USER} \e[Om beta Version"
echo ""
echo ""
ifecno -e "Normal \e[1mBold \e[21mNormal"

notify-send "Congratulations $USER" "You are now HTMLDigger team member." -u normal -i "$HOME/Pictures/.icon.png"
kdialog --title "Congratulations $USER" --passivepopup "$USER you hav been added to our Group in space " 5 &
