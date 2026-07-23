#THIS DOES NOT WORK "OUT-OF-BOX"
#MANY RELY ON SPECIFIC SET-UP OR TWEAKING TO YOUR MACHINE (FILE-PATHS, ETC)

#If you use my executables in the /usr/bin or related,
#clean out the "ldu" function or "lsc" function or whatever you use for it.

#to put one in the bin, simply move or copy the executable [LSI for this example] to the /usr/bin (for global, recommended for
#solo-user only)

#the command:
#   sudo mv LSI /usr/bin



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u -- \W] -¥ '
PS2='[continue_command] -₩ '
PS3='[select] -$ '
#PS1 is primary prompt.
#PS2 is prompt for when you do not finish a command
#PS3 is a selection prompt.

alias rip-mp4='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4"'
alias rip-mp3='yt-dlp -x --audio-format mp3'
alias bluetooth='blueman-manager'
alias compile='nasm -f elf64'

ldu() {
    cd ~/CODE/PYTHON/PROGRAMS/LDU || return
    sudo python3 ldu.py
    cd
}

lsc() {
    cd ~/CODE/PASCAL/PROGRAMS/LSC || return
    fpc v3.pas
    clear
    ./v3
    rm v3.o v3 ad.o ad.ppu di.o di.ppu pow.o pow.ppu subs.o subs.ppu tim.o tim.ppu || return
    clear
    cd
}

lsi() {
	cd ~CODE/CPP/PROGRAMS/LSI || return
	g++ v1.cpp -o v1
	clear
	./v1
	rm v1 || return
	clear
	cd
}

command_not_found_handle() {
	printf 'That is either not a command, not installed, or not configured, dummy!\n' >&2
	return 127
}
