#!/bin/bash
echo "installing behave"
pip_install()
{
        sudo apt-get update
        sudo apt install python3-pip -y
        if [ $? -ne 0 ]; then
                echo "error while installing pip"
        fi
        echo "pip installed successfully"
}
behave_install()
{
        pip install behave
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
pip_install
behave_install
behave_steps
