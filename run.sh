#!/bin/bash
zip_file="model.zip"
requirement="requirement.txt"
pip3 install -r "$requirement"
wget --no-check-certificate "https://drive.usercontent.google.com/download?id=1f23yibPY479TOhRBJrPYCFjmGWMbElnQ&export=download&authuser=0&confirm=t&uuid=82fa984a-dc1e-4b75-94fb-e60f83bd290e&at=APZUnTWeV3a4Pg5VE09Ji_56b1A5:1702780443723" -O "$zip_file"
if [ $? -eq 0 ]; then
    echo "Download successful!"

    unzip "$zip_file"

    if [ $? -eq 0 ]; then
        echo "Unzip successful!"
    else
        echo "Error: Unable to unzip the file."
    fi
else
    echo "Error: Download failed."
fi
