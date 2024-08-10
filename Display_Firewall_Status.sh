Display_Firewall_Status() { #function included

	echo "---Displaying UFW Firewall status---"
	echo " "
	sudo ufw status verbose
	echo " "

}
