#!/bin/zsh
echo  "The aliases available for you Currently are :\n"
alias
echo "\n\n"#this command shows the currently set aliases
read "choice?Do you want to add more aliases permanently?   y/n  " 	#choice stores the choice :)
if [ "$choice" = 'y' ] || [ "$choice" = 'Y' ] || [ "$choice" = 'yes' ] || [ "$choice" = 'Yes' ] ; then
	echo "PLEASE ADD ALIAS OF YOUR CHOICE IN THE FILE ABOUT TO OPEN\n IN the format --  \e[1m  alias custom_command='original_command' \e[0m\n into any line after first two (\e[4mpreferred very last lines\e[0m) And make sure to save the file\n"
	read "forWaiting?Press enter to continue" #forWaiting   #this line is only to let user see the previous line until they are done reading  
	gedit ~/.zshrc  &&	#open the alias file for zsh shell
	echo "\e[1m\n This will only work in zsh shell. for any issue please check out https://github.com/rudranil5/SetPermanentAlias\e[0m" &&
	echo  "\nThe file containing aliases is ~/.zshrc  (~/.bashrc or ~/.bash_aliases (for bash))\nType alias to view aliases\n\e[31mIf shows source not found... type 'source ~/.zsh_aliases' to update\n(Auto effective after restart)\e[0m" &&
	
	source ~/.zshrc	# source the file for zsh
	
	# && after command ensures next command is not executed if the previous is not
else
	:  # : just skips it, does nothing
fi
rm -- setalias.sh
