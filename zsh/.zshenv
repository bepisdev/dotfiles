# Zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug

# $PATH overrides
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$PATH:/Users/joshburns/.local/bin"
export PATH="$PATH:/$(go env GOPATH)/bin"

# Use ruby from Homebrew
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# Perl modules
export PERL5LIB="/Users/joshburns/perl5/lib/perl5/"

# Ghostty $TERM fix
export TERM="xterm-256color"

# Default $EDITOR
export EDITOR="nvim"

# GPG load
export GPG_TTY=$(tty)
