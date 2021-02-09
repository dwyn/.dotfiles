# Did you know rc stands for "Run Commands"
source ~/.zsh_plugins.sh # point to the plugins file

# Set Variables
#? Syntax highlighting for Man pages using Bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

#! Add locations to PATH Variable
#? Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH:"


# Options
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt inc_append_history # save history entries as soon as they are entered
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt share_history # share history between different instances
setopt always_to_end # move cursor to end if word had one match
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt auto_cd # cd by typing directory name if it's not a command

# use with a bundle name to add it to the txt file
function antibody_new {
  if ! [[ $# -eq 0 ]]; then
    printf '%s\n%s\n' "$1" "$(cat ~/.zsh_plugins.txt)" >~/.zsh_plugins.txt
    echo "added '$1' to ~/.zsh_plugins.txt"
  fi # use without bundle name to just update your bundle list
  antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
  antibody update
}


#! For Zinit
source ~/.zinit/bin/zinit.zsh


# Enable autocompletions
autoload -Uz compinit
typeset -i updated_at=$(
  date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null
)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

# Improve autocompletion style
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # approximate matches
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247' # color fitting my terminal bg, using 256 color code

# Save history for auto suggestions
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

export PATH="$PATH:$HOME/.rvm/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#! ALIASES
alias ll='exa -laFh --git'
alias up="source ~/.zshrc && echo Updated 😊\!"
alias gs="git status"
alias gitgo="git commit -Am "Nothing to see here..." && git push"
alias ga="git add -A"
alias gc="git clone --recursive"
alias gcc="git commit -am"
alias gcnm="git commit --allow-empty-message -m ''"
alias gpom="git push -u origin main"
alias gp="git push"
alias zshrc="code ~/.zshrc" # Quick access to the ~/.zshrc file
alias tree="exa --tree --level=2" # update gatsby cli with npm i -g gatsby-cli
alias gd="gatsby develop"
alias t="rspec"
alias tff="rspec --fail-fast"

#! HANDY FUNCTIONS
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

iTerm stuff?
source ~/.iterm2_shell_integration.zshexport PATH="/usr/local/opt/ncurses/bin:$PATH"



# 1. install xcode
# 2. instal git (use githubs noreply email situation)
# 3. generate ssh key 
# - https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# - $ ssh-keygen -t ed25519 -C "githubemailhere"

# - $ eval "$(ssh-agent -s)"

# 4. install ssh on github

# 5. move ~/.zshrc ~/.dotfiles/zshrc

# 6. Link .dotfiles/zshrc to .zshrc
# - ln -s ~/.dotfiles/zshrc ~/.zshrc


# 7. dotbot! https://github.com/anishathalye/dotbot

# git submodule add https://github.com/anishathalye/dotbot





