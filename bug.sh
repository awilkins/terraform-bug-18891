#!/usr/bin/env bash

echo Set up the remote state
cd base
terraform apply

echo Consume the remote state
cd ..
cd top
terraform apply

cd ..

echo Now change the remote state to a list

git checkout bug

cd base
terraform apply

cd ..
cd top

echo Now this plan / refresh /apply will fail

echo Plan..
terraform plan

echo Refresh..
terraform refresh

echo Apply..
terraform apply