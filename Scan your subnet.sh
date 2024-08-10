Basic_Net_Scan() {

		echo "---Initiating basic network scan---"
		echo " "
		First_Three=$(ifconfig | grep netmask | awk '/broadcast/ {print $2}' | cut -d "." -f 1,2,3 | uniq)
		Net=$(ip addr show | grep inet | grep brd | tr '/' ' ' | awk '{print $3}')
		ID=$(ifconfig | grep netmask | awk '/broadcast/ {print $4}' | tr '.' ' ' | awk '{print $4}')
		sudo nmap -T4 $First_Three.$ID/$Net
		echo " "

	
}
