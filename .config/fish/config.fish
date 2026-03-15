if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
end

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
set -x PATH $PATH /home/platon/Documents/JetBrains/clion-2024.3.1.1/bin
set -x PATH $PATH /home/platon/.cargo/bin
set -x PATH $PATH /home/platon/Documents/JetBrains/idea-IU-243/bin
set -x PATH $PATH /home/platon/nncp/nncp-2024-06-05/
set -x PATH $PATH /home/platon/nncp/cmix-21/

set ___MY_VMOPTIONS_SHELL_FILE "$HOME/.jetbrains.vmoptions.sh"
if test -f $___MY_VMOPTIONS_SHELL_FILE
    source $___MY_VMOPTIONS_SHELL_FILE
end

#set -x NVM_DIR "$HOME/.nvm"
#if test -s "$NVM_DIR/nvm.sh"
#    source "$NVM_DIR/nvm.sh"
#end

set -gx PATH $HOME/.local/bin $PATH

set -gx BROWSER firefox


# Intel Quartus Prime Lite (AUR /opt install)
set -gx INTELFPGA_VER 25.1
set -gx INTELFPGA_ROOT /opt/intelFPGA/$INTELFPGA_VER

set -gx QUARTUS_ROOTDIR $INTELFPGA_ROOT/quartus
set -gx QSYS_ROOTDIR $QUARTUS_ROOTDIR/sopc_builder

set -gx PATH $PATH $QUARTUS_ROOTDIR/bin $QSYS_ROOTDIR/bin

