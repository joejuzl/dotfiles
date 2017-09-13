remove_long_history() {
  sed -i -n '/.\{200\}/d' ~/.zsh_history
}

cdf() {
  cd `ls | fzf`
}
