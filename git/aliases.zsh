alias gaf="git commit --amend --no-edit" 
alias wip="git commit -am 'wip'"
alias gp="ggp"
alias gri="git rebase origin/master -i"

alias fbr='git branch | fzf-tmux | sed "s/*//"'
alias fbr='git branch | fzf-tmux | tr -d "*" | tr -d "\n"'
alias fbc='fbr | pbcopy'
alias fco='fbr | xargs git checkout'

alias gbc='git_current_branch'

alias gr="git reset"
alias grh="git reset --hard"
alias grs="git reset --soft"
