# Install Basic cli stack for MacOS
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install coreutils curl dnsmasq fish htop-osx pv tldr vim watch wget
```
# Install Ext4 (linux) support

brew cask install osxfuse
brew install ext4fuse

# Install Basic MacOS Applications
```
brew tap caskroom/cask

brew cask install android-file-transfer bettertouchtool calibre cyberduck dbeaver-community dropbox fastlane firefox flux google-chrome google-drive-file-stream iterm2 libreoffice libreoffice-language-pack macvim opera poedit postman rambox resilio-sync robo-3t smartgit soapui vuze teamviewer virtualbox virtualbox-extension-pack visual-studio-code vlc vivaldi wireshark
```

# Install typography for coding

https://github.com/tonsky/FiraCode/

```
brew cask install homebrew/cask-fonts/font-droidsansmono-nerd-font homebrew/cask-fonts/font-droidsansmono-nerd-font-mono homebrew/cask-fonts/font-hack-nerd-font homebrew/cask-fonts/font-hack-nerd-font-mono
```

## For upgrading brew cask applications

### Install brew-cask-upgrade

https://github.com/buo/homebrew-cask-upgrade

```
brew tap buo/cask-upgrade
```

### Upgrade brew cask applications

```
brew cu -a -y
```

# Terminal
```
curl -L http://get.oh-my.fish | fish
omf install zish
chsh -s $(which fish)
```

# Proxy stuff
```
brew install tor connect
```


# Visual Studio Code (extensions)

```
code --install-extension 2gua.rainbow-brackets 
code --install-extension EditorConfig.EditorConfig
code --install-extension Equinusocio.vsc-material-theme
code --install-extension PKief.material-icon-theme
code --install-extension PeterJausovec.vscode-docker
# code --install-extension WallabyJs.quokka-vscode
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

# Docker

```
brew cask install docker
```

# NodeJS development

```
brew install node
```

```
sudo npm install -g concurrently cross-env eslint newman serverless   
```

# React Native development

```
brew install node watchman

npm install -g react-native-cli
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

```
brew cask install caskroom/versions/java8;
brew cask install android-studio android-sdk android-ndk

# accept all licences
yes | sdkmanager --licenses
```
