### ILSH-SHELLS

if not status --is-interactive
  exit
end

# Load private config
if [ -f $HOME/.config/fish/private.fish ]
    source $HOME/.config/fish/private.fish
end

# Git
if [ -f $HOME/.config/fish/git.fish ]
    source $HOME/.config/fish/git.fish
end

# Aliases
if [ -f $HOME/.config/fish/alias.fish ]
    source $HOME/.config/fish/alias.fish
end

# reload fish config
function reload
    exec fish
    set -l config (status -f)
    echo "reloading: $config"
end

# User paths
set -e fish_user_paths
set -U fish_user_paths $HOME/.bin $HOME/.local/bin $HOME/Applications $fish_user_paths

# Starship prompt
#if command -sq starship
#    starship init fish | source
#end

# sets tools
set -x EDITOR vim
set -x VISUAL vim
#set -x TERM alacritty
# Sets the terminal type for proper colors
set TERM "xterm-256color"

# Suppresses fish's intro message
set fish_greeting
#function fish_greeting
#    fish_logo
#end

# Prevent directories names from being shortened
set fish_prompt_pwd_dir_length 0
set -x FZF_DEFAULT_OPTS "--color=16,header:13,info:5,pointer:3,marker:9,spinner:1,prompt:5,fg:7,hl:14,fg+:3,hl+:9 --inline-info --tiebreak=end,length --bind=shift-tab:toggle-down,tab:toggle-up"
# "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x MANROFFOPT "-c"
set -g theme_nerd_fonts yes


if status --is-login
    set -gx PATH $PATH ~/.bin
end

if status --is-login
    set -gx PATH $PATH ~/.local/bin
end

if type -q bat
    alias cat="bat --paging=never"
end

if command -sq fzf && type -q fzf_configure_bindings
  fzf_configure_bindings --directory=\ct
end

if not set -q -g fish_user_abbreviations
  set -gx fish_user_abbreviations
end

if test tree >/dev/null
    function l1;  tree --dirsfirst -ChFL 1 $argv; end
    function l2;  tree --dirsfirst -ChFL 2 $argv; end
    function l3;  tree --dirsfirst -ChFL 3 $argv; end
    function ll1; tree --dirsfirst -ChFupDaL 1 $argv; end
    function ll2; tree --dirsfirst -ChFupDaL 2 $argv; end
    function ll3; tree --dirsfirst -ChFupDaL 3 $argv; end
end

if type -q direnv
    eval (direnv hook fish)
end

### FUNCTIONS ###
# Fish command history
function history
    builtin history --show-time='%F %T ' | sort
end

# Make a backup file
function backup --argument filename
    cp $filename $filename.bak
end

# recently installed packages
function ripp --argument length -d "List the last n (100) packages installed"
    if test -z $length
        set length 100
    end
    expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n $length | nl
end

function gl
    git log --graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" $argv | fzf --ansi --no-sort --reverse --tiebreak=index --toggle-sort=\` --bind "ctrl-m:execute: echo '{}' | grep -o '[a-f0-9]\{7\}' | head -1 | xargs -I % sh -c 'git show --color=always % | less -R'"
end

function ex --description "Extract bundled & compressed files"
    if test -f "$argv[1]"
        switch $argv[1]
            case '*.tar.bz2'
                tar xjf $argv[1]
            case '*.tar.gz'
                tar xzf $argv[1]
            case '*.bz2'
                bunzip2 $argv[1]
            case '*.rar'
                unrar $argv[1]
            case '*.gz'
                gunzip $argv[1]
            case '*.tar'
                tar xf $argv[1]
            case '*.tbz2'
                tar xjf $argv[1]
            case '*.tgz'
                tar xzf $argv[1]
            case '*.zip'
                unzip $argv[1]
            case '*.Z'
                uncompress $argv[1]
            case '*.7z'
                7z $argv[1]
            case '*.deb'
                ar $argv[1]
            case '*.tar.xz'
                tar xf $argv[1]
            case '*.tar.zst'
                tar xf $argv[1]
            case '*'
                echo "'$argv[1]' cannot be extracted via ex"
        end
   else
       echo "'$argv[1]' is not a valid file"
   end
end

function less
    command less -R $argv
end

function cd
    builtin cd $argv; and ls
end

if type -q exa
    alias ls="exa"
    alias xls="exa -a --icons --color=always --group-directories-first"
    alias xll="exa -lag --icons --color=always --group-directories-first --octal-permissions"
end

# colors to set or unset
set fish_color_autosuggestion "#969896"
set fish_color_cancel -r
set fish_color_command "#0782DE"
set fish_color_comment "#f0c674"
set fish_color_cwd "#008000"
set fish_color_cwd_root red
set fish_color_end "#b294bb"
set fish_color_error "#fb4934"
set fish_color_escape "#fe8019"
set fish_color_history_current --bold
set fish_color_host "#85AD82"
set fish_color_host_remote yellow
set fish_color_match --background=brblue
set fish_color_normal normal
set fish_color_operator "#fe8019"
set fish_color_param "#81a2be"
set fish_color_quote "#b8bb26"
set fish_color_redirection "#d3869b"
set fish_color_search_match bryellow background=brblack
set fish_color_selection white --bold background=brblack
set fish_color_status red
set fish_color_user brgreen
set fish_color_valid_path --underline
set fish_pager_color_completion normal
set fish_pager_color_description "#B3A06D" yellow
set fish_pager_color_prefix normal --bold underline
set fish_pager_color_prefix white --bold --underline
set fish_pager_color_progress brwhite --background=cyan
set fish_color_search_match --background="#60AEFF"

