Auto_System_Updates() {  #function good

		echo "0 1 * * * apt -y update 
1 1 * * * apt -y upgrade 
2 1 * * * apt -y autoremove 
3 1 * * * apt -y autoclean " | sudo crontab -



}
