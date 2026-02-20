# History Configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=1500
SAVEHIST=6000

# Use the emacs motion keys
bindkey -e

# ZSH directory
export ZSH="$HOME/.zsh"

# Default Editor
export EDITOR="nvim"
export PATH="$PATH:$HOME/.local/bin"
export MANPATH="$MANPATH:$HOME/.local/share/man"

# Completions
autoload -Uz compinit && compinit 

# Custom Functions
source $ZSH/functions/ff.zsh
source $ZSH/functions/pyvenv.zsh
source $ZSH/functions/lfcd.zsh

# Arch-repo plugins
# pacman -S zsh-autosuggestions zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Custom Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias camera='mpv --demuxer-lavf-o=video_size=640x480 av://v4l2:/dev/video0 --profile=low-latency --untimed'
alias ll='ls --color=auto -lah'
alias yt-mus='yt-dlp -x --audio-format=opus --audio-quality 0 --embed-thumbnail --add-metadata' # Be sure to install yt-dlp and (python-mutagen for metadata)
alias nf='fastfetch'
alias dots='git --work-tree=$HOME --git-dir=$HOME/.dots'
alias vim='nvim'
alias vi='nvim'
alias mail='aerc'

# Prompt Configuration
if [[ ! $(tty) =~ "/dev/tty." ]] ; then 
	PROMPT="%(?.%F{14}󰣇 .%F{9}󰣇 )%f %2~ %# "
	source $ZSH/plugins/nice-prompt.zsh
fi

