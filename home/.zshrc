# Reload environment
source ~/.zshenv

eval "$(/opt/homebrew/bin/brew shellenv)"

# Clean up dotfiles in the current directory tree
alias shreset="source ~/.zshrc"
alias dsstoreclean='find . -type f -name .DS_Store -delete'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

function get_idf {
  source "$HOME/esp/esp-idf/export.sh"
  alias idf="idf.py -B build.clang"
}

# Load zplug
fpath+=("$(brew --prefix)/share/zsh/site-functions")
fpath+=("$HOME/.rbenv/completions")
source $ZPLUG_HOME/init.zsh

# Plugins
fpath=(/Users/joshburns/.docker/completions $fpath)
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

eval "$(rbenv init - --no-rehash zsh)"
eval "$(uv generate-shell-completion zsh)"
