#!/bin/bash

NVIM=0 # Set this to 1 to use the nvim init.vim instead of the .vimrc

if [ -d "$HOME/.vim_deploy" ]
then
	echo Directory vim_deploy already exists. Overwrite ?
	read  -n1 -p "[Y/n]" answer
	case $answer in
   		y|Y) echo Owerwriting folder!;;
		*)   echo Abort!; exit 1;;
	esac
else
 	mkdir ~/.vim_deploy
fi
 
 cp -r ./* ~/.vim_deploy/
 
 if [ -f "$HOME/.vimrc" ]
 	then
    	echo "Found existing .vimrc in the home folder. Renaming it to .vimrc_old"
 	mv ~/.vimrc ~/.vimrc_old
 fi
 
 if [ "$NVIM" -eq "1" ];
 then
 cp ./vim_init/.vimrc ~/.config/nvim/init.vim
 else
 cp ./vim_init/.vimrc ~/
 fi

# TODO: Add support for more or shells
EXPORT_FZF_DEF_COMMAND=(export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"')
SHELL_CONF="$HOME/.bashrc"

if [ -f $SHELL_CONF ]
then
	echo Editing $SHELL_CONF
	echo "${EXPORT_FZF_DEF_COMMAND[@]}" >> $SHELL_CONF
else
	echo File $SHELL_CONF doest not exist. Ignoring.
fi

echo "All done"
