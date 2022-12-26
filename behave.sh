#!/bin/bash
echo "installing behave"
behave_install()
{
       sudo apt install python3-behave
        if [ $? -ne 0 ]; then
                echo "error while installing behave"
        fi
        echo "behave installed successfully"
}
behave_steps()
{
        echo "steps to run BDD"
        sudo mkdir -p /home/ubuntu/features/steps
        sudo cp -r ./test.feature /home/ubuntu/features
        sudo cp -r ./test.py /home/ubuntu/features/steps
        behave
}
behave_install
behave_steps
