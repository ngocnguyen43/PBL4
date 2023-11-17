#!/bin/bash

zip_file="model"
wget --no-check-certificate "https://drive.usercontent.google.com/download?id=14GYKOqjFPTdP3_QbXit7zKtmnI4XjlKn&export=download&authuser=0&confirm=t&uuid=baf9bce2-bc81-4ada-b6c0-5b2c3456af3e&at=APZUnTVKvoNqSITKH1_avz-WD3sq:1700196129999" -O "$zip_file"
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
