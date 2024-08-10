Tools_Update() { #Function Included
		
		echo "Beginning tools update"
		echo " "
		sudo apt -y update
		sudo apt -y install $tools
		sudo apt -y upgrade $tools
		sudo apt -y autoremove
		sudo apt -y autoclean
		echo "tools fully installed and updated"
		echo " "

		
}
