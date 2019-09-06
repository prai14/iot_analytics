#!/bin/bash
echo "loading awscli bundle" //print to screen

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
echo "loading awscli bundle completed" //print to screen

echo "...................................................." //print to screen
echo "unzip bundle" //print to screen
unzip awscli-bundle.zip
echo "unzip bundle completed"
echo "...................................................." //print to screen
echo "install awscli started"
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
echo "install awscli  completed"

