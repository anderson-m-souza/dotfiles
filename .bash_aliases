# transmission daemon
alias tsm='transmission-remote'
alias tsm-watch='watch -t -n 3 transmission-remote -l'

# dotfiles configuration
alias config='/usr/bin/git --git-dir=/home/and/.cfg --work-tree=/home/and'

# change when's options
when() {
    full_path=/usr/bin/when

    # option c shows month names even with header disabled
    if [[ $@ == "c" ]]; then
        command $full_path --header c
    # option d shows current day
    elif [[ $@ == "d" ]]; then
        command $full_path --past=0 --future=0
    # every other option behaves normally
    else
        command $full_path "$@"
    fi
}
