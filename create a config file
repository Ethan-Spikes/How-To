Configure_Settings() {

	Set_Variables #calls a function that sets the variables you input into the file below.

  path=/home/$(who | awk '/tty/ {print $1}')/Desktop/secure1host.config 
    #Bonus! this is how you put something into the current user's Desktop.
      #Double Bonus! in order to pull this off, we grab the current user's name while running as root!
	
	echo "S_Update=$S_Update" > $path
	echo "T_Update=$T_Update" >> $path
	echo "C_Update=$C_Update" >> $path
	echo "F_Default=$F_Default" >> $path
	echo "Net_Scan=$Net_Scan" >> $path
	echo "F_White_Port=$F_White_Port" >> $path
	echo "port=" >> $path
	echo "Hard_Audit=$Hard_Audit" >> $path
	echo "Log_Enable=$Log_Enable" >> $path
	echo "Hash=$Hash" >> $path
	echo "Vuln_Scan=$Vuln_Scan" >> $path
	echo "Mon_Scan=$Mon_Scan" >> $path
	echo "U_White=$U_White" >> $path
	echo "U_Mon=$U_Mon" >> $path
	echo "Scan_Detect=$Scan_Detect" >> $path
	echo "Honey_Ports=$Honey_Ports" >> $path
	echo "Scan_Frag=$Scan_Frag" >> $path
	echo "Scan_Resp=$Scan_Resp" >> $path
	echo "Auto_Response=$Auto_Response" >> $path


}
