#!/bin/bash

echo "===== Cration of user Started======"

read -p "enter the username : " username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "======= Creation of user Completed ====="

sudo userdel $username 

echo "====== Deletion of user Completed ========"

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then

	echo "as wc is 0 the user is DELTED"

else
	echo " the user was not deleted"

fi




