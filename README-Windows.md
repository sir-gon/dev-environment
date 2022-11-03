# Basic Tips

## Create Desktop Shortcut for Store app in Windows 10

https://winaero.com/desktop-shortcut-store-app-windows-10/ 

## Adjust time to use UTC from internal clock

https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/

Download and double-click: [Make Windows Use UTC Time.reg](Make%20Windows%20Use%20UTC%20Time.reg)

## Windows Subsystem Layer (required by Docker)

https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package

# Scoop package manager

From: https://get.scoop.sh

```
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# or shorter
iwr -useb get.scoop.sh | iex
``` 

## Install Basic CLI tools for Windows 

```
scoop bucket add extras
scoop update
scoop install sudo

sudo scoop install --global grep sed less touch

sudo scoop install --global curl git ntop sudo vim make unxutils

sudo scoop install --global bind
```

Rsync
https://githubmemory.com/repo/AStupidBear/scoop-bear
```
scoop bucket add bear https://github.com/AStupidBear/scoop-bear
sudo scoop install --global cwrsync
```

Nerd Fonts
https://www.nerdfonts.com/
```
scoop bucket add nerd-fonts
sudo scoop install FiraCode-NF-Mono FiraCode-NF Firacode
```


Oh-my-Posh
https://ohmyposh.dev/docs/windows

```
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json

oh-my-posh --init --shell pwsh --config ~/.mytheme.omp.json | Invoke-Expression

. $PROFILE
```

## Install Basic Windows Applications

```
sudo scoop install --global extras/vcredist2022
sudo scoop install --global 7zip autohotkey caffeine ccleaner coretemp flux libreoffice rambox
sudo scoop install --global --skip teamviewer

sudo scoop install --global microsoft-teams zoom

```

## Install multiple web browsers (web development)

```
sudo scoop install --global brave chromium firefox googlechrome opera
```


# PROGRAMMING LANGUAGES & FRAMEWORKS

```
sudo scoop install --global go

sudo scoop install --global nodejs-lts  yarn

sudo scoop install --global python
```

# FAVORITE IDE

```
sudo scoop install --global vim
sudo scoop install --global vscode 
```


# Git & diff frontend

```
sudo scoop install --global smartgit 
```


# DATABASES

```
sudo scoop install --global dbeaver
sudo scoop install --global mongodb-compass 
```




# Upgrade all applications

```
sudo choco upgrade all -y --ignore-checksums
scoop update *
```



# Install Alpine linux subsystem packages 

```
apk update
apk add bind-tools curl nmap git openssh-client vim
```


# Install Ubuntu linux subsystem packages 

```
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 

sudo apt update
sudo apt upgrade -y
 
sudo apt install fish htop zsh
```

# Install Docker client in Ubuntu linux subsystem packages 

https://medium.com/@sebagomez/installing-the-docker-client-on-ubuntus-windows-subsystem-for-linux-612b392a44c4

```
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 
sudo apt update
sudo apt install -y docker-ce
```

# Enable bash / fish / zsh in cmder

https://gingter.org/2016/11/16/running-windows-10-ubuntu-bash-in-cmder/

# Visual Studio Code (extensions)

[See Visual Studio Code extensions](README-VisualStudioCode.md)

# NodeJS development

[See NodeJS Development](README-NodeJS.md)

