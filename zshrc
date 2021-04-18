# Did you know rc stands for "Run Commands"

# Path to your oh-my-zsh installation.
export ZSH="/Users/dharmon/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-syntax-highlighting
  colorize 
  zsh-autosuggestions
  compleat
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Aliases
alias update="source ~/.zshrc && echo Updated 😊\!"
alias leop="learn open"
alias lff="learn --fail-fast"
alias lesu="learn submit"
alias gs="git status"
alias gitgo="git commit -am "Nothing to see here..." && git push"
alias ga="git add -A"
alias gu="git add -u"
alias gc="git clone --recursive"
alias gcc="git commit -am"
alias gcnm="git commit --allow-empty-message -m ''"
alias gpom="git push -u origin main"
alias gp="git push"
alias labs="cd ~/Development/Flatiron/labs"
alias cpwd="printf '%s\n' "${PWD##*/}" | pbcopy && echo 'Copied😊 !'"
alias showme="basename "$PWD" | pbcopy && echo 'Copied😊'"
alias zshrc="code ~/.zshrc" # Quick access to the ~/.zshrc file
alias ll="exa -laBH --tree --level=2" # List the things
# ls -lAHf
alias mmncs="mix meditate --no-clear-screen" # Mix Meditate No Clear Screen
alias students="cd /Users/$USERNAME/Development/Flatiron/Students" # change directory to /Users/dwyn/Development/sc/students
alias sgs="cd /Users/$USERNAME/Development/Flatiron/SGs" # change directory to /Users/dwyn/Development/sc/sgs
alias code.2="cd /Users/$USERNAME/Development/code.2" # change directory to /Users/dwyn/Development/code.2
alias gatsbyup="npm i -g gatsby-cli" # update gatsby cli with npm i -g gatsby-cli
alias tree="exa --tree --level=2" # update gatsby cli with npm i -g gatsby-cli
alias gd="gatsby develop"
alias t="rspec"
alias tff="rspec --fail-fast"
alias f="fzf"
alias squash="git reset $(git merge-base origin/master $(git rev-parse --abbrev-ref HEAD))"

# CMM Shortcuts
alias cmm="cd ~/Development/CMM/dev"

# z installation (after `running brew install z`)
source /usr/local/etc/profile.d/z.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionexport PATH="/usr/local/sbin:$PATH"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"export PATH="/usr/local/sbin:$PATH"

# Homebrew made me do it.
#export PATH="/usr/local/sbin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Potentional Aliases
# git aliases: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
# Rails aliases: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/rails

# CMM Environment stuff
# export PLATFORM_DEV = the path to your platform/dev checkout
shovel() ( ~/Development/CMM/dev/script/run shovel "$@"; )


#* fzf *#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_CTRL_T_OPTS=" --preview 'bat --style=numbers --color=always {} | head -500'"
export BAT_THEME="GitHub"
# Removes duplicates from fzf (from https://leetschau.github.io/remove-duplicate-zsh-history.html)
# For more options check out: http://zsh.sourceforge.net/Doc/Release/Options.html
# And this: https://scriptingosx.com/2019/06/moving-to-zsh-part-3-shell-options/
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP
unsetopt correct_all


export PATH="/usr/local/sbin:$PATH"
