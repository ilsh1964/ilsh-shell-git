### ILSH-SHELLS

## APT
alias ac='sudo apt clean'
alias ai='sudo apt install'
alias ar='sudo apt remove'
alias ap='sudo apt purge'
alias apo='sudo apt policy'
alias as='apt search'
alias au='sudo apt update'
alias ag='sudo apt upgrade'
alias adu='sudo apt dist-upgrade'


## COPY CONFIG
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'
alias cb='cp -f /etc/skel/.bashrc-personal ~/ && exec bash'
alias cz='cp -f /etc/skel/.zshrc-personal ~/ && exec zsh'
alias cf='cp -f /etc/skel/.config/fish/*.fish ~/.config/fish/ && fish'


## ESSENTIALS
alias ...='cd ../.. '
alias ..='cd .. '
alias free="free -mt"
alias h='history'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias la='ls -a'
alias ll='ls -alFh'
alias ls='ls --color=auto'
alias lk='ps -aef |grep -v grep | grep -i '
alias mv='mv -i'
alias rg='rg --sort path'

## FIXES
alias fix-keys='/usr/local/bin/edu-fix-pacman-databases-and-keys'
alias fix-pacman-conf='/usr/local/bin/edu-fix-pacman-conf'
alias fix-pacman-keyserver='/usr/local/bin/edu-fix-pacman-gpg-conf'
alias fix-archlinux-mirrors='/usr/local/bin/edu-fix-archlinux-servers'


# GIT
alias ga='git add -A'
alias gc='git commit -m '
alias gpmain='git push origin main'
alias gpmaster='git push origin master'
alias gs='git status'
alias gr='git restore '
alias grh="git reset --hard"


## HARDWARE

# Pulseaudio\Pipewire
alias audio="pactl info | grep 'Server Name'"

# Installed kernels install
alias kernel='ls /usr/lib/modules'

alias df='command df -h  | grep nvme0n1p2 | head -n 1 ; command df -h  | grep BACKUP ; command df -h  | grep NFS'
alias fdf='command df -h'
alias inxi='inxi -Fxz'
alias nbfsck='sudo touch /forcefsck'
alias sr='sudo reboot'
alias ssn='sudo shutdown now'


## NORDVPN
alias nordl='nordvpn login'
alias nordc='nordvpn c'
alias nords='nordvpn status'
alias nordd='nordvpn d'
alias nordi='nordvpn c Israel'
alias nordu='nordvpn c United_States'
alias nordb='nordvpn c United_Kingdom'


## PACMAN

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# Fastest Mirrors
alias mirror='sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist'

# Fixes
alias pamac-unlock='sudo rm /var/tmp/pamac/dbs/db.lock'
alias rmpacmanlock='sudo rm /var/lib/pacman/db.lck'
alias unlock='sudo rm /var/lib/pacman/db.lck'

# List of explicitly installed packages
alias list='sudo pacman -Qqe'

# List of explicitly installed packages without dependencies
alias listt='sudo pacman -Qqet'

# list of AUR packages
alias listaur='sudo pacman -Qqem'

# USAGE
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias sprs='sudo pacman -Rs'
alias sprdd='sudo pacman -Rdd'
alias spqo='sudo pacman -Qo'
alias spsii='sudo pacman -Sii'
alias u='sudo pacman -Syu'
alias upall='paru -Syu --noconfirm'
alias udpate='sudo pacman -Syyu'


## NALA
alias ni='sudo nala install'
alias nc='sudo nala clean'
alias np='sudo nala purge'
alias npo='sudo apt policy'
alias ns='nala search'
alias nu='sudo nala update'
alias ng='sudo nala upgrade'
alias nr='sudo nala remove'
alias np='sudo nala purge'
alias nh='nala history'
alias nup='sudo nala upgrade && flatpak update'


## SHORTCUTS TO SERVERS
alias web='ssh ilan@10.0.0.99'
alias wttr='curl wttr.in'
alias cheat='curl cheat.sh'
alias pubip='curl ifconfig.io'


## SHORTCUTS TO DIRECTORIES
alias .f='cd ~/.dotfiles'
alias cc='cd ~/.dotfiles/.config/arco-chadwm/chadwm'
alias cf='cd ~/.dotfiles/.config/fish'
alias cs='cd ~/.dotfiles/.config/arco-chadwm/sxhkd'
alias cr='cd ~/.dotfiles/.config/arco-chadwm/scripts'
alias doc='cd ~/Documents'
alias d='cd ~/DATA'
alias dow='cd ~/Downloads'
alias github='cd /home/ilan/DATA/SynologyDrive/BACKUP/GITHUB'
alias mus='cd ~/Music'
alias pic='cd ~/Pictures'
alias vid='cd ~/Videos'


## TOP
alias big="expac -H M '%m\t%n' | sort -h | nl"
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias top10='du -ks * | sort -nr | head -10'


##  EDIT CONFIG SHORTCUTS
alias ealacritty='vim /home/ilan/.config/alacritty/alacritty.toml'
alias eb='vim ~/.bashrc'
alias ec='vim ~/.dotfiles/.config/arco-chadwm/chadwm/config.def.h'
alias echaoticmirrorlist='sudo vim /etc/pacman.d/chaotic-mirrorlist'
alias eenvironment='sudo vim /etc/environment'
alias ef='vim ~/.config/fish/config.fish'
alias efastfetch='vim ~/.config/fastfetch/config.jsonc'
alias efstab='sudo vim /etc/fstab'
alias ei='vim ~/.dotfiles/.config/i3/config'
alias emirrorlist='sudo vim /etc/pacman.d/mirrorlist'
alias ep='vim ~/.zshrc-personal'
alias epacman='sudo vim /etc/pacman.conf'
alias epicom='vim ~/.config/arco-chadwm/picom/picom.conf'
alias er='vim ~/.dotfiles/.config/arco-chadwm/scripts/run.sh'
alias es='vim ~/.dotfiles/.config/arco-chadwm/sxhkd/sxhkdrc'
alias esddm='sudo vim /etc/sddm.conf'
alias ez='vim ~/.zshrc'


## UTIL
# alias bat='batcat'
alias e='vim'
alias ff='fastfetch'
alias ip='ip -br a'
alias nano='vim'
alias pass10='pwgen -s 10 -1'
alias pass14='pwgen -s 14 -1'
alias pass20='pwgen -s 20 -1'
alias rg='rg --sort path'
alias rm='trash-put'
alias unmount-sdb1='udisksctl unmount -b /dev/sdb1'
alias unmount-sdc1='udisksctl unmount -b /dev/sdc1'
alias unmount-sdd1='udisksctl unmount -b /dev/sdd1'
alias shc='echo -n "Enter FILENAME: " && read FILENAME && grep -v "^#" $FILENAME bat '
alias stow='cd ~/.dotfiles && /usr/bin/stow .'
alias t='task list '
alias ta='task add '
alias td='task done '
alias tl='task list '
alias v='vim'
alias update-fc='sudo fc-cache -fv'


## VAULT
alias openvault='encfs ~/.encrypted ~/Private'
alias closevault='fusermount -u ~/Private'


## XD - SHOW ALL INSTALLED DESKTOPS
alias xd='ls /usr/share/xsessions'
alias xdw='ls /usr/share/wayland-sessions'
