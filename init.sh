#!/bin/zsh
setopt EXTENDED_GLOB

if [[ $(pwd) == $(realpath ~) ]]; then
	echo "Dont use this command from ~/. Do \"cd dotfiles\" first"
	exit 1
fi

mkdir ~/dotfilebackup 2> /dev/null 
if [ $? -ne 0 ]; then
	echo "Could not create backup-directory, ~/dotfilebackup, old one still available."
	exit 1
fi

for file in .^git; do
	if [[ -e ~/$file ]]; then
		echo "Backing up $file"
		mv ~/$file ~/dotfilebackup/
	fi
	ln -s ~/dotfiles/$file ~/$file
done

rmdir ~/dotfilebackup 2> /dev/null 
if [ $? -ne 0 ]; then; 
	echo "Old dotfiles are available in ~/dotfilebackup" 
fi

