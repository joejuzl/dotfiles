alias gaf="git commit --amend --no-edit" 
alias wip="git commit -am 'wip'"
alias gp="ggp"

alias fbr='git branch | fzf | sed "s/*//"'
alias fbc='fbr | pbcopy'
alias fco='fbr | xargs git checkout'

