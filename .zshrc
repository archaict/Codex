# Created by newuser for 5.8
eval "$(starship init zsh)"

ls --version &>/dev/null
if [ $? -eq 0 ]; then
  lsflags="--color --group-directories-first -F"
else
  lsflags="-GF"
  export CLICOLOR=1
fi

# Aliases
alias ls="ls ${lsflags}"
alias ll="ls ${lsflags} -l"
alias la="ls ${lsflags} -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias eiri="emacsclient ~/.aliases";
alias zshh="source ~/.zshrc";

alias grep="grep --color=auto";
alias ls="ls --color=auto --group-directories-first";
alias lt="ls --human-readable --size -1 -S --classify";
alias la="ls -A --color=auto --group-directories-first";

alias em="emacsclient";
alias vim="nvim";
alias sv="sudo -E nvim";
alias rm="rm --preserve-root";
alias rmdir="sudo rm -Rfi";

alias cl= "clear";

alias sudo="sudo ";
alias mv="mv -iv";
alias cp="cp -iv";
alias ln="ln -iv";
alias df="df -hT";
alias du="du -hs * | sort -h";

alias cpy="xclip";
alias pst="xclip -o";
alias cs="xclip -selection clipboard";
alias vs="xclip -o -selection clipboard";
alias q="exit";

alias daijoubu= "reboot";
alias sayonara= "shutdown -h now";
alias fping= "ping -c 10";

# GIT
# Do this: git config --global url.ssh://git@github.com/.insteadOf https://github.com
alias gd="git diff"
alias gs="git status 2>/dev/null"
function gc() { git clone ssh://git@github.com/"$*" }
function gg() { git commit -m "$*" }

# More suitable for .zshenv
EDITOR=emacs
PROMPT='%n@%m %3~%(!.#.$)%(?.. [%?]) '

# History settings
HISTFILE=~/.history-zsh
HISTSIZE=10000
SAVEHIST=10000
setopt append_history           # allow multiple sessions to append to one history
setopt bang_hist                # treat ! special during command expansion
setopt extended_history         # Write history in :start:elasped;command format
setopt hist_expire_dups_first   # expire duplicates first when trimming history
setopt hist_find_no_dups        # When searching history, don't repeat
setopt hist_ignore_dups         # ignore duplicate entries of previous events
setopt hist_ignore_space        # prefix command with a space to skip it's recording
setopt hist_reduce_blanks       # Remove extra blanks from each command added to history
setopt hist_verify              # Don't execute immediately upon history expansion
setopt inc_append_history       # Write to history file immediately, not when shell quits
setopt share_history            # Share history among all sessions

# Tab completion
autoload -Uz compinit && compinit
setopt complete_in_word         # cd /ho/sco/tm<TAB> expands to /home/scott/tmp
setopt auto_menu                # show completion menu on succesive tab presses
setopt autocd                   # cd to a folder just by typing it's name
ZLE_REMOVE_SUFFIX_CHARS=$' \t\n;&' # These "eat" the auto prior space after a tab complete

# MISC
setopt interactive_comments     # allow # comments in shell; good for copy/paste
unsetopt correct_all            # I don't care for 'suggestions' from ZSH
export BLOCK_SIZE="'1"          # Add commas to file sizes

# PATH
typeset -U path                 # keep duplicates out of the path
path+=(.)                       # append current directory to path (controversial)

# BINDKEY
bindkey -e
bindkey '\e[3~' delete-char
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey ' '  magic-space


