# Basic Tips

## Create Desktop Shortcut for Store app in Windows 10

https://winaero.com/desktop-shortcut-store-app-windows-10/ 

## Adjust time to use UTC from internal clock

https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/

Donwload and double-click: [Make Windows Use UTC Time.reg](Make%20Windows%20Use%20UTC%20Time.reg)

## Windows Subsystem Layer (required by Docker)

https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package

# Scoop package manager

From: https://get.scoop.sh

```
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# or shorter
iwr -useb get.scoop.sh | iex
``` 

## Command line tools

```
scoop bucket add extras
scoop update

# scoop install aria2

scoop install grep sed less touch

scoop install curl dig git nmap ntop vim
```

Rsync
https://githubmemory.com/repo/AStupidBear/scoop-bear
```
scoop bucket add bear https://github.com/AStupidBear/scoop-bear
scoop install cwrsync
```

Nerd Fonts
https://www.nerdfonts.com/
```
scoop install FiraCode-NF-Mono FiraCode-NF Firacode
```


Oh-my-Posh
https://ohmyposh.dev/docs/windows

```
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json

oh-my-posh --init --shell pwsh --config ~/.mytheme.omp.json | Invoke-Expression

. $PROFILE
```

# Install Chocolatey

https://chocolatey.org/install

# Install Basic cli stack for Windows 

```
choco install -y curl git rsync 
```

# Install Basic Windows Applications

```
choco install -y 7zip adobereader autohotkey ccleaner coretemp googlechrome libreoffice-still rambox teamviewer

choco install -y skype zoom

choco install -y spotify vlc

choco install -y microsoft-teams office365proplus

choco install -y dropbox google-drive-file-stream

choco install -y --ignore-checksums resilio-sync-home

```
# Gamming (because is important)


```
choco install -y epicgameslauncher steam-client

choco install -y --ignore-checksums battle.net

choco install -y discord twitch

choco install -y retroarch zsnes

choco install -y dosbox

```

# Install Development Tools

```

# Diagram tools

choco install -y graphviz drawio

# FAVORITE IDE

choco install -y vim-x64
choco install -y visualstudiocode 
choco install -y visualstudio2019community

# Git & diff frontend

choco install -y smartgit

# PROGRAMMING LANGUAGES & FRAMEWORKS

choco install -y golang

choco install -y jdk8

choco install -y nodejs-lts  yarn

choco install -y python

# Web development

choco install -y firefox opera

# ANDROID MOBILE DEVELOPMENT

choco install -y android-sdk androidstudio 

# DATABASES

choco install -y dbeaver mongodb-compass 

# CONTAINERS & Windows Subsystem for Linux

choco install -y docker-desktop

# Windows Subsystem for Linux Distros



# API DEVELOPMENT

choco install -y insomnia-rest-api-client insomnia-designer postman

# SO Tools

choco install -y unetbootin

```

# Install Fonts

```
choco install -y firacode
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

