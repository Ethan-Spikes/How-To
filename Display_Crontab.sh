
Display_Crontab() { #Function Included


	echo "---Displaying user crontab---"
	echo " "
	crontab -l
	echo " "
	echo "---Displaying root crontab---"
	echo " "
	sudo crontab -l
	echo " "


}
