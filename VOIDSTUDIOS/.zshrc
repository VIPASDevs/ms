# THIS DOES NOT WORK "OUT OF THE BOX"
# MANY RELY ON SPECIFIC SETUP OR TWEAKING TO YOUR MACHINE (FILE PATHS, ETC.)

# If you use my executables in /usr/bin or a related directory,
# remove the corresponding ldu, lsc, or other function if applicable.
#
# To put an executable in /usr/bin, move or copy it there.
# Example (global installation; requires root privileges):
#   sudo mv LSI /usr/bin
#
# If not running interactively, don't do anything.



# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
setopt extendedglob notify
unsetopt autocd beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nathan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall



[[ -o interactive ]] || return

# PROMPTS
# %~ = current directory, with ~ for the home directory
# %1~ = current directory's final component
# %n = username
# %m = hostname (short)
#
# %B and %b enable and disable bold text.

PROMPT=$'\n[DIR: %1~]\nCOMMAND: '
PS2='[continue_command] '
PS3='[select] '

# PROMPT is the primary prompt in Zsh.
# PS2 is the continuation prompt.
# PS3 is the selection prompt for select loops.

# ALIASES
alias rip-mp4='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4"'
alias rip-mp3='yt-dlp -x --audio-format mp3'
alias bluetooth='blueman-manager'
alias compile='nasm -f elf64'

# FUNCTIONS

tor-browser() {
    cd "$HOME/TOR/Browser" || return
    ./start-tor-browser
    cd "$HOME" || return
}

# Uncomment if not using an installed executable.

# ldu() {
#     cd "$HOME/CODE/PYTHON/PROGRAMS/LDU" || return
#     sudo python3 ldu.py
# }

# lsc() {
#     cd "$HOME/CODE/PASCAL/PROGRAMS/LSC" || return
#     fpc v3.pas || return
#     clear
#     ./v3
#     rm -f v3.o v3 ad.o ad.ppu di.o di.ppu pow.o pow.ppu \
#         subs.o subs.ppu tim.o tim.ppu || return
#     clear
#     cd "$HOME" || return
# }

# Uncomment the LSI function if you are not using
# an installed executable in your PATH.

# lsi() {
#     cd "$HOME/CODE/CPP/PROGRAMS/LSI" || return
#     g++ v1.cpp -o v1 || return
#     clear
#     ./v1
#     rm -f v1 || return
#     clear
#     cd "$HOME" || return
# }

# COMMAND NOT FOUND HANDLER
command_not_found_handler() {
    printf 'NOT A COMMAND, NOT INSTALLED, OR NOT CONFIGURED.\n' >&2
    return 127
}
