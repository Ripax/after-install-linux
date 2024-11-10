#!/bin/bash

ssh rion@HTMLDigger-!\.local
alias search='cat ~\!:1/config/.bashrc | grep "^export"';
alias tp='ps -A | grep'