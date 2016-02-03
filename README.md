# jessesanford/dot-files


## Windows

First, update your dot-files in %USERPROFILE%. The following script will either check it out if it does not exist,
or issue a git pull on it if it does.

	curl -k https://raw.githubusercontent.com/jessesanford/dot-files/master/install/install-update-dotfiles.cmd | cmd
	
If you are already in a shell, you could use this:	
	
	curl -k https://raw.githubusercontent.com/jessesanford/dot-files/master/install/install-update-dotfiles.sh | bash


### Babun

If you want to link babun to this, open your babun shell and enter:

	curl -k https://raw.githubusercontent.com/jessesanford/dot-files/master/install/babun-post-install.sh | zsh



