# Install Basic cli stack for Windows 

```
choco install -y curl git rsync vim-x64 yarn
```

# Install NPM global packages 

```
yarn global add newman dotenv-cli
```

# Install Basic Windows Applications

```
choco install -y 7zip autohotkey dbeaver ccleaner cmder coretemp cyberduck docker-for-windows firefox opera postman rambox robo3t teamviewer virtualbox vivaldi wireshark

choco install -y visualstudiocode-insiders --pre
```

# Install Fonts

```
choco install -y firacode
```


# Install Ubuntu linux subsystem packages 

```
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 

sudo apt update
sudo apt upgrade -y
 
sudo apt install fish htop zsh
```

# Install Docker client in Ubuntu linux subsystem packages 

```
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 
sudo apt update
sudo apt install -y docker-ce
```



# Visual Studio Code (extensions)

```
code-insiders --install-extension 2gua.rainbow-brackets EditorConfig.EditorConfig
code-insiders --install-extension Equinusocio.vsc-material-theme
code-insiders --install-extension PKief.material-icon-theme
code-insiders --install-extension PeterJausovec.vscode-docker
code-insiders --install-extension WallabyJs.quokka-vscode
code-insiders --install-extension Zim.vsc-docker
code-insiders --install-extension dbaeumer.jshint
code-insiders --install-extension dbaeumer.vscode-eslint
code-insiders --install-extension donjayamanne.githistory
code-insiders --install-extension eamodio.gitlens
code-insiders --install-extension eriklynd.json-tools
code-insiders --install-extension felixfbecker.php-debug
code-insiders --install-extension hbenl.vscode-firefox-debug
code-insiders --install-extension lukehoban.Go
code-insiders --install-extension ms-python.python
code-insiders --install-extension msjsdiag.debugger-for-chrome
code-insiders --install-extension yzane.markdown-pdf
code-insiders --install-extension yzhang.markdown-all-in-one
```
