#!/bin/bash

echo "Deleting Directory"
rm -rf user-apps2
echo "Finished deleting Directory"

echo "deleting files"
rm -rf web-app.txt
rm -rf nginx.cfg
rm -rf readme.txt
rm -rf install.sh
echo "Finished deleting all four files"

sudo userdel -r my-test-user2

echo "We are loged in as $USER"
message="We are running from a script"
files=`ls`


echo $message
echo "The files have been cleaned in the Directory $files"

