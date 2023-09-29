# MacOS quick development station

## Install Basic cli stack for MacOS

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install coreutils curl dnsmasq fish htop-osx pv tldr vim watch wget
```

## Install Ext4 (linux) support

```bash
brew cask install osxfuse
brew install ext4fuse
```

## Install Basic MacOS Applications

```bash
brew install --cask bettertouchtool flux grandperspective iterm2

brew install --cask android-file-transfer calibre dropbox google-drive-file-stream libreoffice libreoffice-language-pack rambox resilio-sync vuze teamviewer vlc

brew install --cask microsoft-office microsoft-teams

brew install --cask zoom

```

## Gamming (because is important)

```bash
brew install --cask openemu

brew install --cask discord twitch

brew install --cask battle-net epic-games steam

```

## Install Development Tools

```bash
brew install --cask smartgit
brew install --cask sourcetree

## Favorite IDE

brew install --cask macvim visual-studio-code
brew install --cask poedit

# Languages & Runtimes

brew install go
brew install node
brew install python


# Virtualization / Containerization

## Kubernetes
brew install helm minikube

## Docker
brew install --cask docker
brew install ctop

## Virtualbox
brew install --cask virtualbox


### Autocomplete for container tools:

### Kubernetes

echo 'alias k=kubectl' >>~/.zshrc
echo 'complete -F __start_kubectl k' >>~/.zshrc

#### Minikube:
#### Due a bug in autocomplete script for zsh
### Source: https://github.com/kubernetes/minikube/issues/11348#issuecomment-926130349

sed -i "" 's/aliashash\["\([a-z]*\)"\]/aliashash[\1]/g' $(realpath /usr/local/share/zsh/site-functions/_minikube)


## DATABASE

brew install --cask dbeaver-community mongodb-compass

# REST API / SOAP

brew install --cask insomnia postman soapui

## Networking

brew install --cask wireshark

## Alternative browsers

brew install --cask firefox google-chrome opera vivaldi

## FTP / SFTP

brew install --cask cyberduck

## CI / CD

brew install --cask fastlane

## Cloud / Infrastructure

brew install terraform
```

## Install typography for coding

<https://gist.github.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e>

```bash
brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true
```

### For upgrading brew cask applications

#### Install brew-cask-upgrade

<https://github.com/buo/homebrew-cask-upgrade>

```bash
brew tap buo/cask-upgrade
```

#### Upgrade brew cask applications

```bash
brew cu -a -y
```

## Terminal

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)

zsh

omz  theme use gnzh
```

## Proxy stuff

```bash
brew install tor connect
```

## Visual Studio Code (extensions)

[See Visual Studio Code extensions](README-VisualStudioCode.md)

## NodeJS development

[See NodeJS Development](README-NodeJS.md)

### React Native development

```bash
brew install node watchman

npm install -g react-native-cli
```

## PHP Development

### COMPOSER

```bash
wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php --
```

### Drupal

```bash
# DRUSH

php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush
php drush core-status
chmod +x drush
sudo mv drush /usr/local/bin

## Optional. Enrich the bash startup file with completion and aliases.
drush init
```

### Wordpress

```bash
# WORDPRESS CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
```

## ANDROID Development

```bash
brew cask install caskroom/versions/java8;
brew cask install android-studio android-sdk android-ndk

## accept all licences
yes | sdkmanager --licenses
```

## Additional recomendations

[How to Set Up Your Mac for Web Development in 2021 by Vinicius De Antoni](https://betterprogramming.pub/how-to-set-up-your-macbook-for-web-development-in-2021-a7a1f53f6462#9018)
