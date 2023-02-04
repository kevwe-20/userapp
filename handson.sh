#!/bin/bash

echo_ "Creating Directory"
mkdir user-apps2
echo_ "Finished creating Directory"

echo_ "Creating files"
touch user-apps/web-app.txt
touch user-apps/nginx.cfg
touch user-apps/readme.txt
touch user-apps/install.sh
echo_ "Finished creating all four files"

sudo adduser my-test-user2
sudo chown my-test-user2 web-app.txt

echo_ "We are loged in as $USER"
message="We are running from a script"
files=`ls`


echo_ $message
echo_ "The files in the Directory are $files"

