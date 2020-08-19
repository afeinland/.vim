
#PS1='\h:\W \u\$ ' #default

#PS1='[\u@\h \W]\$ ‘  # Default
PS1='\[\e[1;32m\]\u@\h \W \$\[\e[0m\] '
# If a color value is left out, the default is assumed
# i.e. [\e[1;32m\] is the same as [\e[32m\]. Black text background


# Make bash check its window size after a process completes
shopt -s checkwinsize

export CLICOLOR=1 #activate Terminal colors
export LSCOLORS=Exfxcxdxcxegedabagacad

alias ls="ls -GF " # I think -G does the same thing as above, but is less customizeable
alias ll="ls -la"

alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gl="git log"
alias gr="git reset"


export PATH="/usr/local/opt/python/libexec/bin:$PATH"
