# Install Basic Ubuntu CLI Applications

```
# Install Basic cli stack for Ubuntu

sudo apt install -y curl git graphviz htop net-tools nmap pv openssh-client zsh vim
chsh -s $(which zsh)
```

## Terminal OMZ

https://ohmyz.sh/#install

Then in a new terminal with zsh shell running:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
omz  theme set gnzh

```

# Install typography for coding

https://github.com/tonsky/FiraCode/

```
sudo apt install -y fonts-firacode 
```

# Manuall install of Linux GUI Applications

* [Smartgit](https://www.syntevo.com/smartgit/download/)
* [Teamviewer](https://www.teamviewer.com/es/descarga/linux/)
* [MongoDB Compass](https://www.mongodb.com/try/download/compass)

Or a improvised automation:

```
# SMARTGIT
curl https://www.syntevo.com/downloads/smartgit/smartgit-20_2_4.deb -o smartgit-20_2_4.deb \
  && sudo dpkg -i smartgit-20_2_4.deb \
  && rm smartgit-20_2_4.deb

# TEAMVIEWER
curl -L https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -o teamviewer_amd64.deb \
  && sudo dpkg -i teamviewer_amd64.deb \
  && rm teamviewer_amd64.deb

# MONGODB-COMPASS
curl https://downloads.mongodb.com/compass/mongodb-compass_1.26.1_amd64.deb -o mongodb-compass_1.26.1_amd64.deb \
  && sudo dpkg -i mongodb-compass_1.26.1_amd64.deb \
  && rm mongodb-compass_1.26.1_amd64.deb
``` 

# Install Basic Ubuntu GUI Applications


```
sudo apt install -y guake vim-gtk3

```

```
# Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# Microsoft Edge

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo apt update
sudo apt install -y microsoft-edge-dev

# SNAP apps
sudo snap install rambox
sudo snap install skype --classic
sudo snap install teams
```

# Install Development Applications

```
# Docker

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker $USER

# NodeJS

### https://nodejs.org/es/download/package-manager/#distribuciones-de-linux-basadas-en-debian-y-ubuntu

curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# YARN

sudo apt remove -y cmdtest

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

#####################
# Install snap apps #
#####################

# IDE

sudo snap install code --classic

# Databases
sudo snap install dbeaver-ce

# REST APIs 
sudo snap install insomnia
sudo snap install insomnia-designer
sudo snap install postman
```

# Visual Studio Code (extensions)

[See Visual Studio Code extensions](README-VisualStudioCode.md)

# GNOME Shell

- https://extensions.gnome.org/extension/2872/activities-icons/
- https://extensions.gnome.org/extension/6/applications-menu/
- https://extensions.gnome.org/extension/517/caffeine/
- ~~https://extensions.gnome.org/extension/1160/dash-to-panel/~~
- https://extensions.gnome.org/extension/1465/desktop-icons/
- https://extensions.gnome.org/extension/1065/docker-status/
- https://extensions.gnome.org/extension/744/hide-activities-button/
- https://extensions.gnome.org/extension/750/openweather/
- https://extensions.gnome.org/extension/906/sound-output-device-chooser/
- https://extensions.gnome.org/extension/19/user-themes/


# NodeJS development

[See NodeJS Developmen](README-NodeJS)


# PHP development

[See PHP Developmen](README-PHP)


# DevOps tools / Cloud Development


# Terraform

```
sudo apt update && sudo apt install gpg
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update

sudo apt install terraform
```

Source [Haschicorp Official Packaging guide](https://www.hashicorp.com/official-packaging-guide)


```
# Kubernetes

sudo snap install kubernetes
sudo snap install helm

# AWS

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && sudo ./aws/install \
  && rm awscliv2.zip
```

## Google Cloud Platform

```
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt update
sudo apt install google-cloud-cli
```
[See GCP docs](https://cloud.google.com/sdk/docs/install#deb)
