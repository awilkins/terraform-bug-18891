#!/usr/bin/env bash

# Set up the remote state
cd base
terraform apply

cd ..
cd top
terraform apply

cd ..

# now change the remote state to a list

git checkout bug

cd base
terraform apply

cd ..
cd top

# Now this line (or a plan or apply) will fail
terraform refresh
