fpath+=("$(brew --prefix)/share/zsh/site-functions")
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$PATH:/Users/joshburns/.local/bin"
export PATH="$PATH:/$(go env GOPATH)/bin"

zplug "plugins/macos", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "zsh-users/zsh-history-substring-search"
zplug 'dracula/zsh', as:theme

autoload -U promptinit; promptinit
autoload -U compinit && compinit

eval "$(register-python-argcomplete pipx)"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
prompt pure

neofetch
