$zipFile = "model.zip"
$requirement = "requirement.txt"

pip install -r $requirement

python .\pre_train.py

Invoke-WebRequest -Uri "https://drive.usercontent.google.com/download?id=1f23yibPY479TOhRBJrPYCFjmGWMbElnQ&export=download&authuser=0&confirm=t&uuid=82fa984a-dc1e-4b75-94fb-e60f83bd290e&at=APZUnTWeV3a4Pg5VE09Ji_56b1A5:1702780443723" -OutFile $zipFile -UseBasicParsing -SkipCertificateCheck

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
