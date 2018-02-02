#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
# brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

brew install libav
brew install ffmpeg

# add some of mpk's stuff
brew install heroku-toolbelt
# brew install node
brew install awscli

# add some cask too
brew install caskroom/cask/brew-cask

# brew cask install dropbox

# brew cask install 1password

# brew cask install google-chrome
# brew cask install google-drive
# brew cask install firefox
# brew cask install adium
# brew cask install textmate
# brew cask install sublime-text
# brew cask install microsoft-office
# brew cask install java
# brew cask install spotify
# brew cask install macdown
# brew cask install webstorm
# brew cask install expandrive
# brew cask install daisydisk
# brew cask install sourcetree
brew cask install flux
# brew cask install omnigraffle
brew cask install iterm2
# brew cask install xamarin-studio
brew cask install maddthesane-perian
brew cask install cheatsheet
brew cask install reggy
brew cask install spectacle
# brew cask install transmission
brew cask install vlc
brew cask install handbrake
brew cask install mplayerx
brew cask install silverlight


# quicklook plugins from http://sourabhbajaj.com/mac-setup/Homebrew/Cask.html
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

brew install python
brew install python3
# the following requires gpip in the .functions file
gpip install --upgrade pip
gpip install virtualenv



# Remove outdated versions from the cellar.
brew cleanup
