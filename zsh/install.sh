sudo echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh

