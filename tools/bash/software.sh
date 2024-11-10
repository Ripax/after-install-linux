#! /bin/bash
#Author : Anupam Biswas
#Contact : info@htmldigger.in
###################################################################################
#printf '\e]11;#4D5A5E\a'

clear

/bin/cat <<'HTMLDigger'
*****************************************
*    ╦ ╦╔╦╗╔╦╗╦  ╔╦╗┬┌─┐┌─┐┌─┐┬─┐       *
*    ╠═╣ ║ ║║║║   ║║││ ┬│ ┬├┤ ├┬┘       *
*    ╩ ╩ ╩ ╩ ╩╩═╝═╩╝┴└─┘└─┘└─┘┴└─.in    *
*****************************************
HTMLDigger



blue=$'\033[34m'; reset=$'\033[0m'

echo "Hello $blue Test $reset Colors"
echo ""


# The whole list of colors (background) will be visible with (printing an space):

printf '\e[%sm ' {40..47} 0; echo

echo ""

# Or, with foreground colors:
printf '\e[%smColor=%s  ' {30..37}{,} 0 0; echo

echo ""
echo ""

name="HTMLDigger"
name=$name"$(tput setaf 6)(Test)$(tput sgr0)"
echo $name

echo ""

#printf $name


#!/bin/sh
[ $# = 0 ] && exec $0 6
name="Hello"
name=$name"$(tput setaf $1)(Test)$(tput sgr0)"
echo $name
printf $name


echo ""

BOLD="$( echo -e "\e[1m" )"
CYAN="$( echo -e "\e[36m" )"

echo "I am feeling ${BOLD}really ${CYAN}blue!"



echo -e "$txtylw HTMLDigger"