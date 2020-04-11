#!/bin/bash -x

shopt -s extglob

# check for name validation
function validation()
{
	if [[ $1 =~ $2  ]]
	then
		echo "$1 is valid"
	else
		echo "$1 is invalid"
	fi
}

# read name
function readString()
{
	read string
	echo $string
}

namePattern="^[A-Z]{1}[a-z]{2}$"
echo "Enter the First Name"
#invoke read String
firstName="$(readString)" 
# invoke validation 
validation $firstName $namePattern

echo "Enter the Last Name"
#invoke read string
lastName="$(readString)"
# invoke Validation
validation $lastName $namePattern

echo "Enter the Email"
#invoke read String
email="$(readString)"
emailPattern="^[a-z]{1}[a-z0-9]{1,132}([.|_|+|-]?[a-z0-9]{1,122}+)?@[a-z0-9]{1,310}(\.[a-z]{2,4})(\.[a-z]{2})?$"
# invoke validation
validation $email $emailPattern

echo "Enter the Mobile Number"
#invoke read String
mobile="$(readString)"
mobilePattern="^[0-9]{2}[[:space:]][0-9]{10}$"
# invoke validation
validation $mobile $mobilePattern

echo "Enter the Password"
#invoke read String
password="$(readString)"
# minimum 8 character long
passwordPattern="^[a-zA-Z]{1}[a-zA-Z0-9]{7,}$"
#check in expression for Upper Case
passwordPattern="(?=.*[A-Z])^[a-zA-Z]{1}[a-zA-Z0-9]{7,}$"
# invoke validation
validation $password $passwordPattern

