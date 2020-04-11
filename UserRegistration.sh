#!/bin/bash -x

shopt -s extglob

# check for name validation
function nameValidation()
{
	if [[ $1 =~ $namePattern  ]]
	then
		echo "$1 is valid name"
	else
		echo "$1 is invalid name"
	fi
}
# read name
function readName()
{
	read name
	echo $name
}

namePattern="^[A-Z]{1}[a-z]{2}$"
echo "Enter the First Name"
#invoke readName
firstName="$(readName)" 
# invoke nameValidation 
nameValidation $firstName

