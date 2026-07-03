#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1 = '[\u -- \W] -¥ '
PS2 = '[continue_command] -₩ '
PS3 = '[select] -$ '
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

echo 'Copyright Void Studios Source Program 202X'

command_not_found_handle() {
	printf 'That is either not a command, not installed, or not configured, dummy!\n' >&2
	return 127
}

trap '
messages=(
    "Fine... Meany."
    "Mphf..."
    "Changed your mind?"
    "Back to the prompt!"
    "I didn't want to run it anyway."
)
printf "%s\n" "${messages[RANDOM % ${#messages[@]}]}"
' INT
#each has effectively 20% chance.