# Install Basic cli stack for MacOS
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install coreutils curl dnsmasq fish htop-osx pv tldr vim watch wget
```
# Install Ext4 (linux) support

```
brew cask install osxfuse
brew install ext4fuse
```

# Install Basic MacOS Applications
```
brew tap caskroom/cask

brew cask install android-file-transfer bettertouchtool calibre dropbox firefox flux google-chrome google-drive-file-stream iterm2 libreoffice libreoffice-language-pack rambox resilio-sync vuze teamviewer vlc

brew install --cask microsoft-office
```


# Install Development Tools

```
brew install --cask smartgit

# Favorite IDE

brew install --cask macvim visual-studio-code
brew install --cask poedit 

# Languages & Runtimes

brew install node


# Virtualization / Containerization

brew install --cask docker
brew install --cask virtualbox virtualbox-extension-pack

# DATABASE

brew install --cask dbeaver-community mongodb-compass

# REST API / SOAP

brew install --cask insomnia postman soapui

# Networking

brew install --cask wireshark

# Alternative browsers

brew install --cask opera vivaldi

# FTP / SFTP

brew install --cask cyberduck

# CI / CD

brew install --cask fastlane  
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

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s $(which fish)
```

# Proxy stuff
```
brew install tor connect
```

# Visual Studio Code (extensions)

[See Visual Studio Code extensions](README-VisualStudioCode.md)

# NodeJS development

[See NodeJS Development](README-NodeJS.md)


## React Native development

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

# Additional recomendations

[How to Set Up Your Mac for Web Development in 2021 by Vinicius De Antoni](https://betterprogramming.pub/how-to-set-up-your-macbook-for-web-development-in-2021-a7a1f53f6462#9018)
