#Disable instant prompt
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"


#Add powerleve10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Auto-attach to tmux session on shell startup
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#   SESSION_NAME="main"
#   tmux has-session -t $SESSION_NAME 2>/dev/null
#
#   if [ $? -eq 0 ]; then
#     tmux attach-session -t $SESSION_NAME
#   else
#     tmux new-session -s $SESSION_NAME
#   fi
# fi

setxkbmap us 
xmodmap /home/shorya/.dotfiles/qtile/.Xmodmap 
xset r rate 200 32 
clear

# setxkbmap us
# xmodmap /home/shorya/.dotfiles/qtile/.Xmodmap
# xset r rate 200 32 &
# clear

# Created by `pipx` on 2025-07-15 10:45:48
export PATH="$PATH:/home/shorya/.local/bin"

alias py='python3'
alias at='tmux attach-session -t main'
alias sres='~/.config/qtile/scripts/switch_res.sh'

# bun completions
[ -s "/home/shorya/.bun/_bun" ] && source "/home/shorya/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
