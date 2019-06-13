@ECHO OFF
mode 800
echo control panel options
echo -------
echo 0.Add New Hardware control 
echo 1.Add/Remove Programs
echo 2.Date/Time Properties control timedate.cpl
echo 3.Display Properties  control desk.cpl
echo 4.Scanners and Cameras  control sticpl.cpl
echo 5.Sound Properties  control mmsys.cpl sounds
echo 6.Printers Folder control printers
echo 7.System Properties control sysdm.cpl
echo 8.Mouse Properties  control main.cpl
echo 9.Internet Properties control inetcpl.cpl
echo 10.Keyboard Properties control main.cpl keyboard
echo 11.Regional Settings control intl.cpl
echo 12.Multimedia Properties control mmsys.cpl
echo 13.Microsoft Exchange  control mlcfg32.cpl 
echo 14.Password Properties control password.cpl
echo 15.Fonts Folder  control fonts
echo 16.Microsoft Mail Post Office  control wgpocpl.cpl
echo 17.Modem Properties  control modem.cpl
echo 18.Joystick Properties control joy.cpl
echo 19.taskkill /f /im explorer.exe
echo -----------------------------
SET /P NUMBER="Choose: "

2>NUL CALL :CASE_%NUMBER% # jump to :CASE_red, :CASE_blue, etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE # If label doesn't exist

ECHO Done.
EXIT /B
:CASE_00
cls
echo control panel options
echo -------
echo 0.Add New Hardware control 
echo 1.Add/Remove Programs
echo 2.Date/Time Properties control timedate.cpl
echo 3.Display Properties  control desk.cpl
echo 4.Scanners and Cameras  control sticpl.cpl
echo 5.Sound Properties  control mmsys.cpl sounds
echo 6.Printers Folder control printers
echo 7.System Properties control sysdm.cpl
echo 8.Mouse Properties  control main.cpl
echo 9.Internet Properties control inetcpl.cpl
echo 10.Keyboard Properties control main.cpl keyboard
echo 11.Regional Settings control intl.cpl
echo 12.Multimedia Properties control mmsys.cpl
echo 13.Microsoft Exchange  control mlcfg32.cpl 
echo 14.Password Properties control password.cpl
echo 15.Fonts Folder  control fonts
echo 16.Microsoft Mail Post Office  control wgpocpl.cpl
echo 17.Modem Properties  control modem.cpl
echo 18.Joystick Properties control joy.cpl
echo 19.taskkill /f /im explorer.exe
echo -----------------------------
SET /P NUMBER="Choose: "
GOTO :CASE_00
:CASE_0
  sysdm.cpl add new hardware
  GOTO E:CASE_00
:CASE_1
control appwiz.cpl
  GOTO :CASE_00
:CASE_2
control timedate.cpl
  GOTO :CASE_00 
:CASE_3
control desk.cpl
  GOTO :CASE_00
  :CASE_4
control sticpl.cpl
  GOTO :CASE_00
  :CASE_5
control mmsys.cpl sounds
  GOTO :CASE_00
  :CASE_6
control printers
  GOTO :CASE_00
  :CASE_7
control sysdm.cpl
  GOTO :CASE_00
  :CASE_8
control main.cpl
  GOTO :CASE_00
  :CASE_9
control inetcpl.cpl
  GOTO :CASE_00
  :CASE_10
control main.cpl keyboard
  GOTO GOTO :CASE_00
  :CASE_11
control intl.cpl
  :CASE_12
  GOTO :CASE_00
control mmsys.cpl
  GOTO :CASE_00
  :CASE_13
control mlcfg32.cpl
  GOTO :CASE_00
  :CASE_14 password.cpl
control appwiz.cpl
  GOTO :CASE_00
  :CASE_15
control  fonts
  GOTO :CASE_00
  :CASE_16
control wgpocpl.cpl
  GOTO :CASE_00
  :CASE_17
control  modem.cpl
  GOTO :CASE_00
  :CASE_18
control joy.cpl
  GOTO :CASE_00
  :CASE_19
taskkill /f /im explorer.exe && explorer.exe 
  pause
  GOTO END_CASE   
  :CASE_20 
control  fonts
  GOTO :CASE_00

:DEFAULT_CASE
  ECHO lol wut
  GOTO END_CASE
:END_CASE
  VER > NUL # reset ERRORLEVEL
  GOTO :EOF # return from CALL