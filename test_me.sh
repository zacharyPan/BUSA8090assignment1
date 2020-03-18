#!/bin/bash
# saved as test_me.sh
# the program will check if there is txt or not txt all
# Author Zhengyu Pan
# March 18th, 2020

if test -z "$1"; then     # if there is nothing at all
	                  # we just need to check $1 since
			  # if there is $2 that means there
			  # are something
			  # (Gite, 2012)
	echo "This is NOT a test"
else      
	echo "This is a test"
	fi 
# reference
# Gite, V. (2012, December 6). Bash Shell Find Out If a Variable Is Empty Or Not. NixCraft. https://www.cyberciti.biz/faq/unix-linux-bash-script-check-if-variable-is-empty/
