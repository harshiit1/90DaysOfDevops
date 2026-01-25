#!/bin/bash

<<info
this scrit creates a user and deletes the user
info

create_user() {
	echo "=======CREATION OF USER STARTED======="
	read -p "Enter the username: " username
	read -p "Enter the password: " password
	sudo useradd -m "$username"
	echo -e "$password\n$password" | sudo passwd "$username"
	echo "=======CREATION OF USER COMPLETED======="
}

create_user

delete_user(){
	echo "=======DELETING USER======="
	sudo userdel "$username"
	echo "=======USER DELETED SUCCESSFULLY======="
}

delete_user
