export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

setopt -o sharehistory

remove_long_history() {
  sed -i -n '/.\{200\}/d' ~/.zsh_history
}
