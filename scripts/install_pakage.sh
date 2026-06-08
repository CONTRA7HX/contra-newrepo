#!/bin/bash

<<info
this script will install that you pass in the arguments
info

echo "installing $1"

sudo apt-get update $1 > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "installaton completed $1 is arguments stand for 1st arguments"

