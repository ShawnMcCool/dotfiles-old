# character encoding
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# zsh history for reverse search etc - can be a security issue
HISTSIZE=100000
SAVEHIST="$HISTSIZE"
HISTFILE=~/.zsh_history
# security measure, don't save a line to history if preceded by a space
setopt hist_ignore_space

# share history between terminals
setopt SHARE_HISTORY
# ignore repeated duplicate lines (ls etc)
setopt hist_ignore_all_dups

# annoying zprezto zsh behavior
unsetopt correct_all
setopt dvorak

# termite
export PATH=$PATH$:~/scripts

alias ltr="ls -ltr"
alias lhtr="ls -lhtr"
alias ga="git add . -A"
alias gc="git commit -a"
alias vu="vagrant up"
alias vl="VBoxManage list runningvms"
alias vd="vagrant halt"
alias vs="vagrant ssh"
alias vr="vagrant reload"
alias gss="git status -s"
alias grep="grep --colour --devices=skip"
alias tf="tail -f"

# dvorak helpers
alias 'h=ls'
alias 'ha=la'
alias 'hh=ll'
alias 'hhh=llh'
alias 'hq=lq'
alias 'hr=lr'
alias 'htr=ltr'

# convenience
alias 'mkdir=mkdir -p'
alias 'df=df --exclude-type=tmpfs --exclude-type=devtmpfs'
alias 'd.=df -h . |sed 1d'
alias 'dus=du -msc * .*(N) | sort -n'
alias 'dus.=du -msc .* | sort -n'
alias 'fcs=(for i in * .*(N); do echo $(find $i -type f | wc -l) "\t$i"; done) | sort -n'
alias 'fcs.=(for i in .*; do echo $(find $i -type f | wc -l) "\t$i"; done) | sort -n'
alias 'last=last -a'

# LSD (ls replacement)
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ltr=' ls -ltr'

# quick csv view
csv() {
    # csvtool
    if [[ -t 1 ]]; then
        column -n -s , -t $* | less
    else
        column -n -s , -t $*
    fi
}

# quick find 
f() {
    echo "find . -iname \"*$1*\""
    find . -iname "*$1*"
}

# quick regex history search
zh() {
    pattern=^$(echo '(?=.*'${^@}')' | tr -d ' ')
    grep --text ~/.zsh_history --perl-regexp --regexp $pattern
}

# remap dvorak/qwerty quickly
alias 'aoeu=setxkbmap us -option' # (us keyboard layout, no special options)
alias 'asdf=setxkbmap us dvorak -option compose:menu,ctrl:nocaps,terminate:ctrl_alt_bksp,lv3:ralt_alt 2> /dev/null || setxkbmap dvorak us 2> /dev/null || setxkbmap dvorak'

# source prezto configure to trigger terminal theme setup
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# to customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi
