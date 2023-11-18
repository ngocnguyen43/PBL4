#!/bin/bash

python ./pre_train.py 

zip_file="model.zip"
wget --no-check-certificate "https://drive.usercontent.google.com/download?id=1UlEvGgo1J1pH6U7MLAVAsXI2cJrxnf39&export=download&authuser=0&confirm=t&uuid=c444613c-1796-4100-b019-5a89709275b1&at=APZUnTXIErDbUIu_vH1CwvKX1uFP:1700241926175" -O "$zip_file"
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
