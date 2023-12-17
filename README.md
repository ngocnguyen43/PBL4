### Require:

*   #### Windows
    
    + Make sure WSL is installed

    + To access server from other devices from local network, you need to change WSL port forwrad [this](https://learn.microsoft.com/en-us/windows/wsl/networking)

*   #### Mac

    * Make sure virtual env is installed, wget, unzip also required
  
    * Change permission for __run.sh__ ```chmod 755 ./run.sh``` then run

    * Or Download model and extract directly inside root folder from [this](https://drive.google.com/drive/folders/1NPQbkelkoFwaq_hNGTBd_qj1YucWB9_-?usp=drive_link)

### Run:

+ Activate vitual env ```./bin/activate``` 
+ run server ```python3 -m flask  run --host=0.0.0.0``` or ```flask run --host=0.0.0.0```
