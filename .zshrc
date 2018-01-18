export PATH=$PATH:$HOME/bin:/usr/local/bin:/home/harry/.bin:
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/firefox/firefox
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin
# RVM (ruby version manager)
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;$(basename ${PWD})\007"
  echo -ne "$window_title"
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(docker git rails ruby npm shrink-path zsh-syntax-highlighting zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh
source /home/harry/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=59'
setopt correct

bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User configuration
export EDITOR=/usr/bin/nvim
export COMPOSE_HTTP_TIMEOUT=600
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
source $HOME/.zsh_aliases
[[ -s "$HOME/.zsh_work_aliases" ]] && source "$HOME/.zsh_work_aliases"

# use vim as the default pager for man pages

fpath=(~/.zsh/Completion $fpath)
eval "$(direnv hook zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$GEM_HOME/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
