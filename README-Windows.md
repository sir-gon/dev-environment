# Install Basic cli stack for Windows 

```
choco install -y curl git rsync vim-x64 yarn
```

# Install NPM global packages 

```
yarn global add newman dotenv-cli
```

# Install Basic Windows Applications

```
choco install -y 7zip  autohotkey ccleaner coretemp cyberduck firefox googlechrome libreoffice-still opera rambox teamviewer virtualbox

```

# Install Development Tools

```
choco install -y visualstudiocode

choco install -y python

choco install -y android-sdk androidstudio dbeaver cmder docker-for-windows jdk8 mongodb-compass postman

```

# Install Fonts

```
choco install -y firacode
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

[See Visual Studio Code extensions](README-VisualStudioCode)

# NodeJS development

```
sudo npm install -g concurrently cross-env eslint newman serverless   
```
