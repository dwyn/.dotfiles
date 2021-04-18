https://github.com/anishathalye/dotbot
https://dotfiles.github.io/utilities/



Homebrew/terminal/bash
OSX Productivity - Window Management/Quick Launcher/Hyperswitch
OSX Settings - Dock/Finder
Web Browser - Extensions - AdBlock, Privacy Badger, OneTab, JSONViewer, Stylus, Vue Devtools, React Devtools
Node.js - nvm
Code Editor - vs code
Code Editor Extensions
Break timer and Flux

----------------------------------------------------------------------------
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew cask install iterm2
# update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
brew install bash # latest version of bash
# set brew bash as default shell
brew install fortune
brew install cowsay 
brew install git
brew install vcprompt
# update bash_profile
brew cask install spectacle
brew cask install alfred
# set CMD+space to launch alfred
brew cask install firefox
# install nvm/node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
mkdir ~/workspace
npm install -g lite-server eslint
brew cask install visual-studio-code
# update vscode settings
# install vscode extensions 

----------------------------------------------------------------------------

Fonts
https://github.com/dwyn/Operator-Mono-Lig-Book

----------------------------------------------------------------------------

z jump
brew install z

add to .zshrc
source /usr/local/etc/profile.d/z.sh

----------------------------------------------------------------------------


Bat is a thing
https://github.com/sharkdp/bat

Chrome is a thing
defaults write com.google.Keystone.Agent checkInterval 604800
^^ sets chrome autoupdater to check less frequently

HyperSwitch is a thing (not sure if I will keep this thing)
https://www.macupdate.com/app/mac/41769/hyperswitch

----------------------------------------------------------------------------

NODE
brew install node

NVM
https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh


----------------------------------------------------------------------------
# Spaceship Theme
- https://github.com/denysdovhan/spaceship-prompt

Clone this repo:

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory:

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
Set ZSH_THEME="spaceship" in your .zshrc.


----------------------------------------------------------------------------
Powerline fonts? (for iterm)
https://github.com/powerline/fonts


# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

----------------------------------------------------------------------------
zsh syntax highlighting
https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md

----------------------------------------------------------------------------
zsh-autosuggestions
https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md

----------------------------------------------------------------------------
colorize 
https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize

----------------------------------------------------------------------------
compleat 
https://github.com/mbrubeck/compleat

----------------------------------------------------------------------------

brew install fliqlo

----------------------------------------------------------------------------

Elixir via asdf

asdf plugin-add elixir
asdf plugin-add erlang
brew install autoconf
brew install wxmac
brew install oracle-jdk
asdf install erlang 22.3.1 # can take a long time
asdf install elixir 1.8.1
asdf global erlang 22.3.1

DOCUMENTATION INFORMATION (See: /Users/dharmon/.asdf/plugins/erlang/kerl-home/builds/asdf_22.3.1/otp_build_22.3.1.log)
 * documentation  :
 *                  fop is missing.
 *                  Using fakefop to generate placeholder PDF files.

--------------------------------------------------------
 https://github.com/junegunn/fzf#preview-window

brew install fzf


--------------------------------------------------------


brew install bat
https://github.com/sharkdp/bat#installation
