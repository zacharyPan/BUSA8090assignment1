#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron
# Author, Zhengyu Pan
# modified code from https://www.staff.hs-mittweida.de/~wuenschi/data/media/compbiolbook/chapter-10-shell-programming--time-signal.sh

time=$(date +%I)
minute=$(date +%M) # get the minute
a=15   # set number equal to 15, 30 and 45
b=30
c=45
count=0
while test $count -lt $time; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done
sleep 3   # quiet for 3 second 

if test $minute -le $a ;then    # if minues less than 15
	                        # do nothing
  exit
elif test $minute -le $b ;then  # since we already check minute is not 
	                        # less than 15 if it goes here. so just 
				# check it less than 30, which is 
				# if 15 < minute <= 30
  echo -e "\a" 
elif test $minute -le $c ;then  # simialar with comment above
  echo -e "\a" 
  echo -e "\a"

else                       # else refer to all cases minute > 45
  echo -e "\a"
  echo -e "\a"
  echo -e "\a"
fi


