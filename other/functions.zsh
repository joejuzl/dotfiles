cdf() {
  cd `ls | fzf`
}

ask() {
  read "REPLY?Are you sure? "
  [[ $REPLY =~ ^[Yy]$ ]]
}
