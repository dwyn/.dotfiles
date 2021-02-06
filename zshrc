# Did you know rc stands for "Run Commands"


#! ALIASES
alias ll='ls -lAFh'
alias up="source ~/.zshrc && echo Updated 😊\!"
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
alias mmncs="mix meditate --no-clear-screen" # Mix Meditate No Clear Screen
alias students="cd /Users/$USERNAME/Development/Flatiron/Students" # change directory to /Users/dwyn/Development/sc/students
alias sgs="cd /Users/$USERNAME/Development/Flatiron/SGs" # change directory to /Users/dwyn/Development/sc/sgs
alias code.2="cd /Users/$USERNAME/Development/code.2" # change directory to /Users/dwyn/Development/code.2
alias gatsbyup="npm i -g gatsby-cli" # update gatsby cli with npm i -g gatsby-cli
# https://the.exa.website/features/tree-view
alias tree="exa --tree --level=2" # update gatsby cli with npm i -g gatsby-cli

# https://getantibody.github.io/usage/
# WE SWITCHING TO THIS??

alias gd="gatsby develop"



alias t="rspec"
alias tff="rspec --fail-fast"

#! HANDY FUNCTIONS
function mkcd() {
  mkdir -p "$@" && cd "$_";
}



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

git submodule add https://github.com/anishathalye/dotbot
