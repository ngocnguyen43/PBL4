#!/bin/bash

pip install -r requirement.txt

python ./pre_train.py 


zip_file="model.zip"
wget --no-check-certificate "https://drive.usercontent.google.com/download?id=1Bq-809GB8--XFp330Ik3QcK2uVBxj4Ep&export=download&authuser=0&confirm=t&uuid=cd79fee8-cbdf-4815-b0c7-06815141e0e1&at=APZUnTXBBYWtwO6RUgnr4dD7yDkl:1700331759430" -O "$zip_file"
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
