#!/bin/sh
# Author - Anupam Biswas
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything


PATH=$PATH:$HOME/bin
export PATH
 
# set vim as a text editor
export EDITOR=/usr/bin/vim
 
# set colorful prompt 
export PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
 
# set java_home
export JAVA_HOME=/usr/local/jdk