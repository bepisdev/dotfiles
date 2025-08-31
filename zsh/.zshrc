# Reload environment
source ~/.zshenv

# Clean up dotfiles in the current directory tree
alias dsstoreclean='find . -type f -name .DS_Store -delete'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias vim="nvim"
alias get_idf='. $HOME/esp/esp-idf/export.sh'

# Load zplug
fpath+=("$(brew --prefix)/share/zsh/site-functions")
source $ZPLUG_HOME/init.zsh

# Shell completion for UV
eval "$(uv generate-shell-completion zsh)"

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
zplug "bepisdev/zshclean", from:github

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



# Herd injected PHP binary.
export PATH="/Users/joshburns/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/joshburns/Library/Application Support/Herd/config/php/82/"
