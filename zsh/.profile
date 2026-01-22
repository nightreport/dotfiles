alias lla='lsd -lA --hyperlink=auto --group-directories-first --blocks permission,size,user,date,name'
alias ll='lsd -l --hyperlink=auto --group-directories-first'
alias l='lsd --hyperlink=auto --group-directories-first'
alias la='lsd -A --hyperlink=auto --group-directories-first'
alias die='sudo shutdown now'
alias re='sudo  reboot now'
alias ":q"='exit'
alias cal='cal -m'
alias fe='cd "$(xplr --print-pwd-as-result)"'
alias nv='nvim'
alias piton='python'
alias set-wallpaper="~/Scripts/set-wallpaper.sh"
alias gi="~/Scripts/git_add_commit_push.sh"
alias update="yay -Syyu"
alias unfuck-wifi="sudo systemctl restart NetworkManager"

export QT_QPA_PLATFORMTHEME=qt6ct
export RIPGREP_CONFIG_PATH=/home/temshop/.config/ripgrep/ripgreprc
export PATH=~/.cargo/bin/:$PATH
