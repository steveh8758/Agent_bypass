@echo off
rem samprocessprotect.exe LenRCClient.exe "REDAgent.exe"
PUSHD %~DP0 & cd /d "%~dp0"
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas
title="碁優廣播軟體"關閉程式
echo 只適用於 "碁優廣播軟體" 如無法使用
echo 這邊回報 steveh8758@gmail.com
echo.
set /p x=1.關閉 2.還原 : 
if %x%==1 ( 
	reg add "HKLM\software\microsoft\Windows nt\currentVersion\image file execution Options\REDAgent.exe" /f 
	reg add "HKLM\software\microsoft\Windows nt\currentVersion\image file execution Options\REDAgent.exe" /v "debugger" /d "mow" /t REG_SZ /f
	taskkill /im REDAgent.exe /f 
	cls
	echo 成功關閉!
	pause
	exit)
if %x%==2 (
	reg delete "HKLM\software\microsoft\Windows nt\currentVersion\image file execution Options\REDAgent.exe" /f
	cls
	echo 還原成功!
	pause
	exit)

