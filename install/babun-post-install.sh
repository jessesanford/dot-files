#!/usr/bin/env zsh

#
# REPO: https://github.com/joshball/dot-files
#
# This script:
# curl -k https://raw.githubusercontent.com/joshball/dot-files/master/install/babun-post-install.sh | zsh
#
# Borrowed from:
# curl -k https://gist.githubusercontent.com/prabirshrestha/279d8b179d9353fe8694/raw/babun-post-install | zsh
#

successfully() {
	$* || (echo "\nfailed" 1>&2 && exit 1)
}

fancy_echo() {
	echo "\n$1"
}

fancy_echo "Updating babun"
	successfully pact update

fancy_echo "Updating babun HOME ~/.zshrc"
	successfully curl https://gist.githubusercontent.com/prabirshrestha/279d8b179d9353fe8694/raw/.zshrc -o ~/.zshrc


# fancy_echo "Updating ~/.zshrc"
# 	successfully curl https://gist.githubusercontent.com/prabirshrestha/279d8b179d9353fe8694/raw/.zshrc -o ~/.zshrc
# 
# fancy_echo "Installing tmux"
# 	successfully pact install tmux
# 
# fancy_echo "Installing solarized dark theme and powerconsolas for mintty"
# 	successfully curl https://gist.githubusercontent.com/prabirshrestha/279d8b179d9353fe8694/raw/.minttyrc -o ~/.minttyrc
# 	
# fancy_echo "Installing the_silver_searcher (ag)"
# 	successfully pact install automake pkg-config libpcre-devel liblzma-devel
# 	successfully git clone https://github.com/ggreer/the_silver_searcher ~/ag
# 	successfully pushd ~/ag
# 	successfully bash -x -o igncr ./build.sh && make install
# 	successfully cd ..
# 	successfully rm -rf ~/ag 
# 	successfully popd
# 	
# fanyc_echo "Updating gitconfig"
# 	successfully git config --global core.autocrlf true
# 	successfully git config --global user.name "Joshua Ball"
# 	successfully git config --global user.email "joshua.g.s.ball@gmail.com"

# echo "execute 'chere -i -t mintty' in admin mode to enable Zsh Prompt Here"

# source ~/.zshrc
