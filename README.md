# Install Basic cli stack for MacOS
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install curl dnsmasq fish htop-osx pv vim wget
```

# Install Basic MacOS Applications
```
brew tap caskroom/cask

brew cask install android-file-transfer calibre cyberduck fastlane fastonosql firefox google-chrome google-drive-file-stream iterm2 libreoffice libreoffice-language-pack macvim opera poedit postman rambox resilio-sync soapui vuze teamviewer virtualbox virtualbox-extension-pack visual-studio-code visual-studio-code-insiders vlc
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

# Atom

```
apm install csslint cssfmt linter-js-standard jsfmt git-log git-plus git-time-machine minimap minimap-git-diff linter php-fmt project-manager tree-view-git-status  atom-material-ui --verbose
```

# React Native

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
