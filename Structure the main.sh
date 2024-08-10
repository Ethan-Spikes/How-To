ARGS=$(getopt --options 'hycu' --long "help, yes, configure, user-settings" -- "$@")

set -- "$ARGS"

#Bonus! this is how we process arguments from the cmd line
  #Double Bonus! in order to make an argument require another argument - such as for scanning specific ports - put a colon on the short option.
  


Main() {

#first we take our arguments from the cmd line and do something with it...
  #in general, if the script does sensitive stuff make sure there is a security check
#then 
	
	
	echo "Welcome to secure1host!"

	
	for i in $ARGS; do
		case "$i" in
			-h | --help)
				Help
				exit;;# this step can have a shift, break, or exit
			-y | --yes)
				All_Yes='y'
				shift;;
			-c | --configure)
				C_Settings='y'
				shift;;
			-u | --user-settings)
				U_Settings='y'
				shift;;
			--) #the final test
				echo " "
				Root_Check
				break;;

		esac
	done
	
	#executes based on settings
	
	if [ $All_Yes == 'y' ]; then
		All_Yes
	elif [ $U_Settings == 'y' ]; then
		source $path
		break
	elif [ $C_Settings == 'y' ]; then
		Configure_Settings
		echo 'configuration complete'
		echo 'run "sudo secure1host -u" to run with configurations'
		exit
	else
		Set_Variables
	fi
	
	Run_Commands
	Progress_Report
	
	echo "secure1host complete. Terminating script."
	exit
}
