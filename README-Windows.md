# Basic Tips

## Create Desktop Shortcut for Store app in Windows 10

<https://winaero.com/desktop-shortcut-store-app-windows-10/>

## Adjust time to use UTC from internal clock

<https://www.howtogeek.com/323390/how-to-fix-windows-and-linux-showing-different-times-when-dual-booting/>

Download and double-click: [Make Windows Use UTC Time.reg](win/Make%20Windows%20Use%20UTC%20Time.reg)

## Windows Subsystem Layer (required by Docker)

<https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package>

## Hot Corners

<https://github.com/vhanla/winxcorners>

# Scoop package manager

From: <https://get.scoop.sh>

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

sudo scoop install --global aria2

sudo scoop install --global grep sed less touch

sudo scoop install --global curl git ntop sudo vim make unxutils

sudo scoop install --global bind extras/vcredist2022
```

Rsync
<https://githubmemory.com/repo/AStupidBear/scoop-bear>

```
scoop bucket add bear https://github.com/AStupidBear/scoop-bear
sudo scoop install --global cwrsync
```

## Nerd Fonts
<https://www.nerdfonts.com/>

```
scoop bucket add nerd-fonts
sudo scoop install --global FiraCode-NF-Mono FiraCode-NF Firacode
```

## Oh-my-Posh
<https://ohmyposh.dev/docs/windows>

```
scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json

oh-my-posh --init --shell pwsh --config ~/.mytheme.omp.json | Invoke-Expression

. $PROFILE
```

## Programming Languages & Frameworks

```
sudo scoop install --global go

sudo scoop install --global nodejs-lts  yarn

sudo scoop install --global python
```

## CLI Cloud tools

```
sudo scoop install --global aws
sudo scoop install --global gcloud
sudo scoop install --global terraform

sudo scoop install --global helm kubectl minikube

```

## Install Basic (portable) Windows Applications

```
sudo scoop install --global rambox
```

# Install Chocolatey

<https://chocolatey.org/install>

## Install Basic Windows Applications

```
sudo choco install -y chocolateygui powertoys

sudo choco install -y 7zip adobereader autohotkey caffeine ccleaner coretemp f.lux libreoffice-still teamviewer

sudo choco install -y skype zoom

sudo choco install -y spotify vlc

sudo choco install -y microsoft-teams office365proplus

sudo choco install -y dropbox google-drive-file-stream

sudo choco install -y --ignore-checksums resilio-sync-home

```

## Gamming (because is important)

```
sudo choco install -y epicgameslauncher steam-client

sudo choco install -y --ignore-checksums battle.net

sudo choco install -y discord twitch

sudo choco install -y retroarch zsnes

sudo choco install -y dosbox

```

## Install Development Tools

```

# Multiple web browsers for web development

sudo choco install -y brave browser-select chromium firefox googlechrome opera

# Diagram tools

sudo choco install -y graphviz drawio


# FAVORITE IDE

sudo choco install -y vim
sudo choco install -y visualstudiocode 
sudo choco install -y visualstudio2019community

# Git & diff frontend

sudo choco install -y smartgit
sudo choco install -y winmerge

# Java 11 SDK

sudo choco install Temurin11 --params="/ADDLOCAL=FeatureMain,FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome /INSTALLDIR=$env:Programfiles\Eclipse Adoptium\ /quiet"

# ANDROID MOBILE DEVELOPMENT

sudo choco install -y android-sdk androidstudio 


# DATABASES

sudo choco install -y dbeaver mongodb-compass mongodb-shell


# CONTAINERS & Windows Subsystem for Linux

sudo choco install -y docker-desktop
sudo scoop install --global ctop

# API DEVELOPMENT

sudo choco install -y insomnia-rest-api-client insomnia-designer postman
```

Mingw C/C++ Development

```powershell
git clone https://github.com/microsoft/vcpkg.git \vcpkg
\vcpkg\bootstrap-vcpkg.bat


choco install mingw
```

****

## Upgrade all applications

```
sudo choco upgrade all -y --ignore-checksums; scoop update --global *
```

## Upgrade all applications and clean caches

```
choco upgrade all -y --ignore-checksums; C:\ProgramData\chocolatey\bin\choco-cleaner.bat; scoop update --global *; sudo scoop cache --global rm *
```

 scoop update --global *;

# Windows Subsystem for Linux (WSL)

## Install Alpine linux subsystem packages

```
apk --update add bind-tools curl git graphviz htop nmap pv openssh-client zsh vim
chsh -s $(which zsh)
```

Then in a new terminal running zsh, [Install OMZ](README-Ubuntu.md#terminal-omz)

## Install Ubuntu linux subsystem packages

```
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

sudo apt install -y curl git graphviz htop net-tools nmap pv openssh-client zsh vim
chsh -s $(which zsh)
```

Then in a new terminal running zsh, [Install OMZ](README-Ubuntu.md#terminal-omz)

## Tips Ubuntu WSL

[pbcopy in Ubuntu WSL](https://lloydrochester.com/post/unix/wsl-pbcopy-pbpaste/)

## Install Docker client in Ubuntu linux subsystem packages

Is (now) a configuration of Docker Desktop.
Enable integration with WSL.

# Visual Studio Code (extensions)

[See Visual Studio Code extensions](README-VisualStudioCode.md)

# NodeJS development

[See NodeJS Development](README-NodeJS.md)
