#timer units schedule jobs
  #jobs can trigger at a certain point in time or when a certain event occurs

#.timer files control .service files, and both files are required to make a timer unit

#timer units are created as systemd services, and therefore are controlled with the 'systemctl' cmd and its logs are accessed with the 'journalctl' cmd

#so how do we create a timer?

#version: 1.0


Set_Variables() {

echo "What do you want the name of your timer to be?"
read name
echo "what do you want its description to be?"
read description
echo "what do you want the service to execute?"
read execute
echo "after system boot, when do you want the timer to run (example: 5min)"
read B_Time
echo "while running, how often do you want the timer to run (example: 24h)"
read A_Time

}

Create_Timer_Unit() {

  path2timers=/etc/systemd/system/
  path2execute=/usr/local/bin/
  service=$path2timers$name.service
  timer=$path2timers$name.timer
  verify=$path2timers$name.*
  execute=$path2execute$name.sh
  
  echo "[Unit]
  Description=\"$description\"
  
  [Service]
  ExecStart=$execute"  > $service #to make service file


  
  
  echo "[Unit]
  Description=\"$description\"
  
  [Timer]
  OnBootSec=$B_Time
  OnUnitActiveSec=$A_Time
  OnCalendar=Mon..Fri *-*-* 10:00:*
  Unit=$service
  
  [Install]
  WantedBy=multi-user.target" > $timer #to make timer file

  systemd-analyze verify $verify #to verify timer unit formatted correctly

  sudo systemctl start $name.timer #to activate timer for current session only

  sudo systemctl enable $name.timer #to enable timer to activate on boot


}

Main() {

  Root_Check
  Set_Variables
  Create_Timer_Unit

  echo "Timer Unit Maker Complete"
  exit
  
}

Main
