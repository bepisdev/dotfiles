# Clean up dotfiles in the current directory tree
alias dsstoreclean='find . -type f -name .DS_Store -delete'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias vim="nvim"

# Load zplug
fpath+=("$(brew --prefix)/share/zsh/site-functions")
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# PATH management
eval "$(register-python-argcomplete pipx)"
export PATH="$(brew --prefix rustup)/bin:$PATH"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$PATH:/Users/joshburns/.local/bin"
export PATH="$PATH:/$(go env GOPATH)/bin"

# Shell completions
fpath=(/Users/joshburns/.docker/completions $fpath)

# Plugins
zplug "plugins/macos", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/git-extras", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "zsh-users/zsh-history-substring-search", as:plugin
zplug "zsh-users/zsh-syntax-highlighting", as:plugin
zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Display system info
neofetch

# Install plugins if there are plugins that have not been installed
autoload -U promptinit; promptinit
autoload -U compinit && compinit
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

export GPG_TTY=$(tty)
