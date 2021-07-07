# git
alias gs="git status"
alias gp="git pull"
alias gps="git push"
alias gca="git commit -a"
alias gcam="git commit -a -m "
alias gcm="git commit -m "
alias gaa="git add -a"

# Directories
alias home="cd ~"
alias root="cd /"

# tar
alias untar="tar -zxvf "
alias unxtar="tar -xJvf "
mktar() {
    tar -cvzf $1.tar.gz $1
}
mkxtar() {
    tar -cvJf $1.tar.xz $1
}

# color aliases (may already exist, but ¯\_(ツ)_/¯)
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls/tree
alias ll="ls -lh"
alias la="ls -Alh"
alias trea="tree -a"

# apt
alias agi="sudo apt-get install "
alias agr="sudo apt-get remove "
alias agu="sudo apt-get update"
alias agug="sudo apt-get upgrade"
alias agd="sudo apt-get dist-upgrade"
alias agc="sudo apt-get clean"
alias agac="sudo apt-get autoclean"

# clear
alias c="clear"

# keep myself from messing up
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# clean directory
alias cleanup="/bin/rm -f *# *~"

# IPython
if [[ -z $(uname -s | grep -E "(MINGW|MSYS)") ]]; then
    # Windows
    alias ipy=ipython.exe
else
    alias ipy=ipython
fi

# CPU temp
alias cputemp="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"

# Clipboard
alias clip="xclip -sel clipboard"
