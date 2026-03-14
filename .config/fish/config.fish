source /usr/share/cachyos-fish-config/cachyos-config.fish
#source ~/bak/.fish_aliases

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# Firejail
alias fj='firejail --noprofile --private'

# Torsocks
alias ts=torsocks

# Clear shell & exit
alias c1anye='echo "" > ~/.local/share/fish/fish_history && clear && history -cw > /dev/null 2>&1'
alias arval='echo "" > ~/.local/share/fish/fish_history && clear && history -cw && exit'

# Go path variable
set -Ux PATH $PATH /usr/local/go/bin

# Starship prompt
#starship init fish | source

# List packages sorted by installation date
alias list_sorted_pkg="awk '/\[ALPM\] installed/ { print $1 $2 $3 $4 $5 }' /var/log/pacman.log"
alias bak-pkg-list='pacman -Qe > bak/config/pacman-Qe.txt'
alias v=nvim

# sets neovim as default text editor
#set -gx EDITOR nvim
set -gx VISUAL nvim

# for cleaner interface git commits
set -gx EDITOR "nvim -c 'set noshowmode'"

# searching in terminal
#something with w3m or elinks etc
