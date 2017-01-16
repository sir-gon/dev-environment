# Basic stack for Mac OS X / MacOS 

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install curl dnsmasq fish htop-osx pv vim wget
```

# Terminal
```
curl -L http://get.oh-my.fish | fish
omf install zish
chsh -s $(which fish)
```

# Proxy stuff
```
brew install tor connect
```

# Atom

```
apm install csslint cssfmt linter-js-standard jsfmt git-log git-time-machine minimap minimap-git-diff linter php-fmt project-manager tree-view-git-status  atom-material-ui --verbose
```

# React Native

```
brew install node
brew install watchman

npm install -g react-native-cli
```

# PHP Development

```
# COMPOSER
wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- 

# DRUSH
php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush
php drush core-status
chmod +x drush
sudo mv drush /usr/local/bin

# Optional. Enrich the bash startup file with completion and aliases.
drush init

# WORDPRESS CLI

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
```
