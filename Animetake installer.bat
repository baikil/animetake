@echo off
set "logo1=echo [38;5;255m                                          ___          _                [38;5;220m__        __[0m"
set "logo2=echo [38;5;255m                                         /   ^|  ____  (_)___ ___  ___  [38;5;220m/ /_____ _/ /_____[0m"
set "logo3=echo [38;5;255m                                        / /^| ^| / __ \/ / __ `__ \/ _ \[38;5;220m/ __/ __ `/ //_/ _ \[0m"
set "logo4=echo [38;5;255m                                       / ___ ^|/ / / / / / / / / /  __/[38;5;220m /_/ /_/ / ,^< /  __/[0m"
set "logo5=echo [38;5;255m                                      /_/  ^|_/_/ /_/_/_/ /_/ /_/\___/[38;5;220m\__/\__,_/_/^|_^|\___/[0m"
set "logo6=echo [38;5;240m                                                                                Installer[0m"
set "logo=cls&%logo1%&%logo2%&%logo3%&%logo4%&%logo5%&%logo6%"
:menu
MODE 130, 24
title Animetake installer - Menu
%logo%
echo.
echo.
echo                                                        浜様様様様様様?
echo                                                        ?1. Install   ?
echo                                                        ?2. About     ? 
echo                                                        ?3. Exit      ?
echo                                                        藩様様様様様様?
echo.
choice /c 123 /n
if %errorlevel% == 1 goto install
if %errorlevel% == 2 goto about
if %errorlevel% == 3 goto exit
:install
MODE 130, 24
title Animetake installer - Installing... [0%]
%logo%
echo.
echo.
echo                                                        浜様様様様様様?
echo                                                        ?  Preparing  ?
echo                                                        ?      [38;5;9m0%%[0m       ? 
echo                                                        藩様様様様様様?
md %public%\animetake
title Animetake installer - Installing... [33%]
%logo%
echo.
echo.
echo                                                        浜様様様様様様?
echo                                                        ? Downloading ?
echo                                                        ?     [38;5;208m33%%[0m     ? 
echo                                                        藩様様様様様様?
powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/baikil/animetake/main/Animetake.bat','%public%\animetake\Animetake.bat')"
powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/baikil/animetake/main/animetake.ico','%public%\animetake\animetake.ico')"
title Animetake installer - Installing... [66%]
%logo%
echo.
echo.
echo                                                        浜様様様様様様?
echo                                                        ? Finalising  ?
echo                                                        ?     [38;5;220m66%%[0m     ? 
echo                                                        藩様様様様様様?
set shortcutmaker="%temp%\shortcutmaker_%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %shortcutmaker%
echo sLinkFile = "%USERPROFILE%\Desktop\Animetake.lnk" >> %shortcutmaker%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %shortcutmaker%
echo oLink.TargetPath = "%public%\animetake\Animetake.bat" >> %shortcutmaker%
echo oLink.Description = "Unofficial animetake client" >> %shortcutmaker%
echo oLink.IconLocation = "%public%\animetake\animetake.ico" >> %shortcutmaker%
echo oLink.Save >> %shortcutmaker%
cscript /nologo %shortcutmaker%
del %shortcutmaker%
title Animetake installer - Installed [100%]
%logo%
echo.
echo.
echo                                                        浜様様様様様様?
echo                                                        ?  Installed  ?
echo                                                        ?    [38;5;10m100%%[0m     ? 
echo                                                        藩様様様様様様?
timeout /t 2 >nul
set startapp=true
goto exit
:about
title Animetake installer - About
%logo%
echo.
echo.
echo                                                        浜様様様様様融
echo                                                        ?   ABOUT    ?
echo                                                        藩様様様様様夕
echo.
echo                                                    File name : Animetake installer.bat
echo                                                  Description : Animetake unofficial client
echo                                                      Version : 1.6
echo                                                File location : %0
echo                                                      Made by : Baikil
echo                                                       Github : https://github.com/baikil/animetake
echo.
echo.
echo.
echo                                           ^< Press any key to go back to the menu ^>
pause >nul
goto menu
:exit
MODE 130, 24
title Animetake installer - Exit
cls
%logo1%
%logo2%
%logo3%
%logo4%
%logo5%
%logo6%
echo.
echo.
echo                                                        浜様様様様様様?
echo                                                        ?   Goodbye   ?
echo                                                        藩様様様様様様?
echo.
timeout /t 2 >nul
if "%startapp%" == "true" (start %public%\animetake\Animetake.bat)
exit