# Install Basic cli stack for MacOS
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install curl dnsmasq fish htop-osx pv tldr vim wget
```

# Install Basic MacOS Applications
```
brew tap caskroom/cask

brew cask install android-file-transfer betterzip calibre cyberduck fastlane fastonosql firefox google-chrome google-drive-file-stream iterm2 libreoffice libreoffice-language-pack macvim opera poedit postman rambox resilio-sync soapui vuze teamviewer virtualbox virtualbox-extension-pack visual-studio-code visual-studio-code-insiders vlc vivaldi wireshark
```

# Install typography for coding

https://github.com/tonsky/FiraCode/

```
brew cask install font-fira-code font-hack
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
code-insiders --install-extension 2gua.rainbow-brackets 
code-insiders --install-extension EditorConfig.EditorConfig
code-insiders --install-extension Equinusocio.vsc-material-theme
code-insiders --install-extension PKief.material-icon-theme
code-insiders --install-extension PeterJausovec.vscode-docker
# code-insiders --install-extension WallabyJs.quokka-vscode
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


# NodeJS development

```
sudo npm install -g concurrently cross-env eslint newman serverless   
```

# React Native development

```
brew install node
brew install watchman

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
