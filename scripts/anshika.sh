#!/bin/bash

hero="nikhil"
villan="anshika"

echo " india ka hero hai $hero"

echo "india ki villain hai $villan"

# sheolll / environment variable bhi hote hai pre defined


echo "current user logged in? $USER"

read -p  "anshika ka pura naam kya hai " fullname

# read means take the input from the user
# in addtion yaha par -p ka mtlb hai print karna
echo "anshika ka pura naam( $fullname ha)"

# argumets
#  anshika nepali lama

echo "script name: $0:
echo " first name: $1"		

echo " middle name : $2"

echo " last name : $3"

echo "total number of idiots: $#
# $# isse pata lagata hai ki kitne numbers of adument passs kare hai 
echo "hence anshika name is $@"
# #@ se jitne bhi arguments hai woh sare print ho jaynge 


