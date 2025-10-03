# Zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug

# $PATH overrides
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$PATH:/Users/joshburns/.local/bin"
export PATH="$PATH:/$(go env GOPATH)/bin"

# Perl modules
export PERL5LIB="/Users/joshburns/perl5/lib/perl5/"

# Ghostty $TERM fix
export TERM="xterm-256color"

# Default $EDITOR
export EDITOR="nvim"

# GPG load
export GPG_TTY=$(tty)

# Ruby build
export LDFLAGS=""
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"

