$zipFile = "model.zip"
$requirement = "requirement.txt"

pip install -r $requirement

python .\pre_train.py

Invoke-WebRequest -Uri "https://drive.usercontent.google.com/download?id=1Bq-809GB8--XFp330Ik3QcK2uVBxj4Ep&export=download&authuser=0&confirm=t&uuid=cd79fee8-cbdf-4815-b0c7-06815141e0e1&at=APZUnTXBBYWtwO6RUgnr4dD7yDkl:1700331759430" -OutFile $zipFile -UseBasicParsing -SkipCertificateCheck

if ($?) {
    Write-Host "Download successful!"

    Expand-Archive -Path $zipFile -DestinationPath .\

    if ($?) {
        Write-Host "Unzip successful!"
    } else {
        Write-Host "Error: Unable to unzip the file."
    }
} else {
    Write-Host "Error: Download failed."
}
