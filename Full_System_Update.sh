Full_System_Update() { #Function Included

		echo "Beginning full system upgrade"
		echo " "
		sudo apt -y update
		sudo apt -y full-upgrade
		sudo apt -y autoremove
		sudo apt -y autoclean
		echo "System fully upgraded"
		echo " "
		
}
