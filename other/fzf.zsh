# fzf fuzzy matching

if [ -f "$HOME/.fzf.zsh" ]
then
  source ~/.fzf.zsh
else
  /usr/local/opt/fzf/install
fi

# fzf + ag configuration
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
