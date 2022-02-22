	reg add "HKLM\software\microsoft\Windows nt\currentVersion\image file execution Options\REDAgent.exe" /f 
	reg add "HKLM\software\microsoft\Windows nt\currentVersion\image file execution Options\REDAgent.exe" /v "debugger" /d "mow" /t REG_SZ /f
	taskkill /im REDAgent.exe /f 
	exit
