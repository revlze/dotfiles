set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH
fish_vi_key_bindings

if status is-interactive
    # Commands to run in interactive sessions can go here
    if type -q fastfetch
        fastfetch
    end
end

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
export PATH="$HOME/.local/bin:$PATH"
