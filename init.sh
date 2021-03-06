#!/bin/zsh
setopt EXTENDED_GLOB

DOTFILE_DIR=~/dotfiles
BACKUP_DIR=$DOTFILE_DIR/backup

mkdir BACKUP_DIR 2> /dev/null 

for file in $DOTFILE_DIR/.^git; do # every dot-file except '.git'
	file=${file:t} # stip leading path components
	if [[ -e ~/$file ]]; then
		# file exists in ~/
		if [[ -h ~/$file ]]; then
			# $file is a symlink, check if target is the dotfiles-one
			if [[ $(readlink ~/$file) == $DOTFILE_DIR/$file ]]; then
				echo "$file already added, skipping"
				continue
			else
				echo "unlinking $file"
				unlink ~/$file
			fi
		else
			# regular file or directory, back it up
			echo "Backing up $file"
			mv ~/$file $BACKUP_DIR/
		fi
	fi
	echo "linking $DOTFILE_DIR/$file to ~/$file"
	ln -s $DOTFILE_DIR/$file ~/$file
done

rmdir $BACKUP_DIR 2> /dev/null 
if [ $? -ne 0 ]; then; 
	echo "Old dotfiles are available in $BACKUP_DIR" 
fi

