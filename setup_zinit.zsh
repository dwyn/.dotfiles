#!/usr/bin/env zsh 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"


zinit load djui/alias-tips
zinit load zsh-users/zsh-completions
zinit load caarlos0/zsh-open-github-pr
zinit load zsh-users/zsh-syntax-highlighting
zinit load zsh-users/zsh-history-substring-search
zinit load denysdovhan/spaceship-prompt
zinit load chrissicool/zsh-256color
zinit load robbyrussell/oh-my-zsh path:plugins/git-prompt
zinit load robbyrussell/oh-my-zsh path:plugins/command-not-found
zinit load zsh-users/zsh-autosuggestions
zinit load zdharma/fast-syntax-highlighting