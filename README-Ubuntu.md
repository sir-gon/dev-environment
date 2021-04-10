# Install Basic Ubuntu CLI Applications

```
# Install Basic cli stack for Ubuntu

sudo apt install -y curl git htop net-tools nmap pv vim graphviz

sudo apt install -y guake vim-gtk3

```

# Terminal

https://ohmyz.sh/#install

```
sudo apt install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)


```

# Install typography for coding

https://github.com/tonsky/FiraCode/

```
sudo apt install -y fonts-firacode 
```

# Manuall install of Linux GUI Applications

* [Smartgit](https://www.syntevo.com/smartgit/download/)
* [Teamviewer](https://www.teamviewer.com/es/descarga/linux/)
 

# Install Basic Ubuntu GUI Applications

```

# Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update

sudo apt install -y code


# Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt-get update
sudo apt-get install -y google-chrome-stable

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

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
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

# Databases
sudo snap install dbeaver-ce
sudo snap install code --classic

# REST APIs 
sudo snap install insomnia 
sudo snap install postman
```

# Visual Studio Code (extensions)

[See Visual Studio Code extensions](README-VisualStudioCode)

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


