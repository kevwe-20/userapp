#!/bin/bash

echo "Creating Directory"
mkdir user-apps2
echo "Finished creating Directory"

echo "Creating files"
touch user-apps2/web-app.txt
touch user-apps2/nginx.cfg
touch user-apps2/readme.txt
touch user-apps2/install.sh
echo "Finished creating all four files"

cp -p user-apps2/* .
echo "Finished copying all four files"

sudo adduser --disabled-password --gecos "" my-test-user2
# sudo adduser my-test-user2
echo "my-test-user2:password" | sudo chpasswd
sudo chown my-test-user2 web-app.txt

echo "We are loged in as $USER"
message="We are running from a script"
files=`ls`


echo $message
echo "The files in the Directory are $files"
