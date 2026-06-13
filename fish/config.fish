set -g fish_greeting
function fish_greeting_custom
    set -l os_version (uname -r)
    echo -e "Windows PowerShell"
    echo -e "Copyright (C) Microsoft Corporation. All rights reserved.\n"
    echo -e "Install the latest PowerShell for new features and improvements! https://aka.ms\n"
end
if status is-interactive
    fish_greeting_custom
end
function fish_prompt
    set -l current_dir (string replace -r "^$HOME" "~" (pwd))
    set -l win_dir (string replace -a "/" "\\" $current_dir)
    if test "$win_dir" = "~"
        set win_dir "C:\Users\\$USER"
    else if test "$win_dir" = "\\"
        set win_dir "C:"
    end
    echo -n -s (set_color 00afff) "PS " (set_color dbdbdb) "$win_dir" (set_color 00afff) "> " (set_color normal)
end
function fish_right_prompt
    if set -q __fish_git_prompt_show_informative_status
        fish_vcs_prompt
    end
end
set -g fish_color_autosuggestion 555
bind \cf forward-char
bind \ti forward-word
alias ls="ls -l"
