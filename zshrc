plugins=(
  git
  docker
  docker-compose
)

autoload -U promptinit; promptinit
prompt purer

alias v="nvim"
alias vc="nvim ~/.config/nvim/init.vim"
alias dotfiles="cd ~/dotfiles"
go() { cd ~/Projects/"$1" }

export ZSH=~/.oh-my-zsh
export EDITOR=nvim
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

export PATH="/usr/local/bin:/usr/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

source $HOME/.rvm/scripts/rvm
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
[ -f ~/.secret_aliases ] && source ~/.secret_aliases

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'
