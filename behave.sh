#!/bin/bash
echo "steps to run BDD"
sudo mkdir -p /home/ubuntu/features/steps
sudo cp -r ./test.feature /home/ubuntu/features
sudo cp -r ./test.py /home/ubuntu/features/steps
