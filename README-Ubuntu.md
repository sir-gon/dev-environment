# Install Basic Ubuntu CLI Applications

```
# Install Basic cli stack for Ubuntu

sudo apt install -y curl git htop net-tools nmap pv vim

sudo apt install -y guake vim-gtk3

```

# Terminal

https://ohmyz.sh/#install

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)


```

# Install typography for coding

https://github.com/tonsky/FiraCode/

```
sudo apt install -y fonts-firacode 
```

# Install Basic Ubuntu GUI Applications

```
# Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update

sudo apt install -y code

# Sublime Text 3

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update
sudo apt install -y sublime-text


# Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt-get update
sudo apt-get install -y google-chrome-stable


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

```


# Install snap apps

```
sudo snap install insomnia 
sudo snap install postman
sudo snap install rambox
sudo snap install dbeaver-ce
sudo snap install code --classic
sudo snap install sublime-text --classic
sudo snap install skype --classic
```


## Install Hyper as terminal emulator

Download from https://hyper.is/#installation 

Then install following themes + plugins:

```
hyper i hyper-solarized-dark2
hyper i hypercwd
hyper i hyper-dark-scrollbar
hyper i hyper-search
hyper i hyper-highlight-active-pane
hyper i hyperborde
hyper i hyperlinks
hyper i hyper-savetext
```

# Visual Studio Code (extensions)

```
code --install-extension 2gua.rainbow-brackets 
code --install-extension EditorConfig.EditorConfig
code --install-extension Equinusocio.vsc-material-theme
code --install-extension PKief.material-icon-theme
code --install-extension PeterJausovec.vscode-docker
#code --install-extension WallabyJs.quokka-vscode
code --install-extension Zim.vsc-docker
# code --install-extension dbaeumer.jshint
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension eriklynd.json-tools
code --install-extension felixfbecker.php-debug
code --install-extension hbenl.vscode-firefox-debug
code --install-extension lukehoban.Go
code --install-extension mikestead.dotenv
code --install-extension ms-python.python
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension yzane.markdown-pdf
code --install-extension yzhang.markdown-all-in-one
```

# React Native

```
```

# NodeJS development

```
sudo npm install -g concurrently cross-env dotenv-cli eslint newman serverless   
```

# PHP Development

```
apt install -y php7.1-cli
```

## COMPOSER

```
wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- 
```

## Drupal

```
# DRUSH

wget -O drush.phar https://github.com/drush-ops/drush-launcher/releases/download/0.6.0/drush.phar
chmod +x drush.phar
sudo mv drush.phar /usr/local/bin/drush

```

## Wordpress

```
# WORDPRESS CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
```

# ANDROID Development 

https://mfonville.github.io/android-studio/

```
sudo apt-add-repository ppa:maarten-fonville/android-studio 
sudo apt-get update
sudo apt-get install android-studio
```
