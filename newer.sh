#!/bin/bash
# save as newer.sh
# Author, Zhengyu Pan
# Mar 18th, 2020
# this program will give input file(s) and print
# the newest file

# first of all I need initial the file and number(the higher 
# the newer) of the file, so in the for loop I could make a compare
newFile=$1
newNumber=$(ls -i "$newFile" | awk 'NR==1{print $1}')



# I don't 100% happy with the for-loop
# in python I would do for i in range(1,len(allFile))
# to avoid compare the first file information with the 
# first file. Howeve, in linux shell, I don't know how
# to do it yet
for file in "$@"; do  # (linux—How to pass multiple files to 
	              #  a Bash script as variables?, n.d.)
	number=$(ls -i "$file" | awk 'NR==1{print $1}')
        # (filesystems—How to find a very latest created file
        # in current directory on linux machine?, n.d.)	
	# get the number from the file


	# compare with current newest file
	# if the current file's number is greater than
	# current newest file, replace
   if test $number -gt $newNumber; then
	 newFile=$file
	 NewNumber=$number
 fi 
done

# print the file with biggest number, which is the newest file
echo "$newFile"


# reference
#filesystems—How to find a very latest created file in current directory on linux machine? (n.d.). Super User. Retrieved March 18, 2020, from https://superuser.com/questions/763041/how-to-find-a-very-latest-created-file-in-current-directory-on-linux-machine

#linux—How to pass multiple files to a Bash script as variables? (n.d.). Super User. Retrieved March 18, 2020, from https://superuser.com/questions/1405033/how-to-pass-multiple-files-to-a-bash-script-as-variables


