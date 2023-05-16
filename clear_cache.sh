#!/bin/bash

SECONDS=0
echo "Cleaning cache from terraform"

sudo find . -type f -name ".terraform.lock.hcl" -prune -exec rm -rf {} \;

sudo find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \;

ELAPSED="Elapsed: $(($SECONDS / 3600))hrs $((($SECONDS / 60) % 60))min $(($SECONDS % 60))sec"

echo $ELAPSED