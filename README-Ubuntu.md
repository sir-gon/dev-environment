# Install Basic cli stack for Ubuntu
```
sudo apt install -y curl fish git htop net-tools nmap pv vim
```

# Install Basic Ubuntu Applications
```

sudo apt install -y guake vim-gtk3

# Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt update

sudo apt install -y code-insiders

# Sublime Text 3

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update
sudo apt install -y sublime-text


# Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Docker

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update
sudo apt install -y docker-ce

# NodeJS

https://nodejs.org/es/download/package-manager/#distribuciones-de-linux-basadas-en-debian-y-ubuntu
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt install -y nodejs

# YARN

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

```

# Install typography for coding

https://github.com/tonsky/FiraCode/

```
sudo apt install -y fonts-firacode 
```


# Terminal
```
curl -L http://get.oh-my.fish | fish
chsh -s $(which fish)
fish
omf install zish
```

# Visual Studio Code (extensions)

```
code-insiders --install-extension 2gua.rainbow-brackets 
code-insiders --install-extension EditorConfig.EditorConfig
code-insiders --install-extension Equinusocio.vsc-material-theme
code-insiders --install-extension PKief.material-icon-theme
code-insiders --install-extension PeterJausovec.vscode-docker
#code-insiders --install-extension WallabyJs.quokka-vscode
code-insiders --install-extension Zim.vsc-docker
# code-insiders --install-extension dbaeumer.jshint
code-insiders --install-extension dbaeumer.vscode-eslint
code-insiders --install-extension donjayamanne.githistory
code-insiders --install-extension eamodio.gitlens
code-insiders --install-extension eriklynd.json-tools
code-insiders --install-extension felixfbecker.php-debug
code-insiders --install-extension hbenl.vscode-firefox-debug
code-insiders --install-extension lukehoban.Go
code-insiders --install-extension mikestead.dotenv
code-insiders --install-extension ms-python.python
code-insiders --install-extension msjsdiag.debugger-for-chrome
code-insiders --install-extension yzane.markdown-pdf
code-insiders --install-extension yzhang.markdown-all-in-one
```

# React Native

```
```

# NodeJS development

```
sudo npm install -g concurrently cross-env eslint newman serverless   
```

# PHP Development
## COMPOSER

```
wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- 
```

## Drupal

```
# DRUSH

php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush
php drush core-status
chmod +x drush
sudo mv drush /usr/local/bin

# Optional. Enrich the bash startup file with completion and aliases.
drush init
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
