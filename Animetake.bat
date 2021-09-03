::Edit with OEM encoding
:ini
@echo off
if not exist %public%\animetake\ (md %public%\animetake)
if not exist %public%\animetake\settings.txt (call :makeset)
call :loadset
:logo
title Animetake - Logo
set "logo1=echo [38;5;255m                                          ___          _                [38;5;%logocolor%m__        __[0m"
set "logo2=echo [38;5;255m                                         /   ^|  ____  (_)___ ___  ___  [38;5;%logocolor%m/ /_____ _/ /_____[0m"
set "logo3=echo [38;5;255m                                        / /^| ^| / __ \/ / __ `__ \/ _ \[38;5;%logocolor%m/ __/ __ `/ //_/ _ \[0m"
set "logo4=echo [38;5;255m                                       / ___ ^|/ / / / / / / / / /  __/[38;5;%logocolor%m /_/ /_/ / ,^< /  __/[0m"
set "logo5=echo [38;5;255m                                      /_/  ^|_/_/ /_/_/_/ /_/ /_/\___/[38;5;%logocolor%m\__/\__,_/_/^|_^|\___/[0m"
set "logo6=echo [38;5;240m                                                                                     v1.6[0m"
set "logo=cls&%logo1%&%logo2%&%logo3%&%logo4%&%logo5%&%logo6%"
:menu
MODE 130, 24
title Animetake - Menu
%logo%
echo.
echo.
echo                                                        ษอออออออออออออป
echo                                                        บ1. Home      บ
echo                                                        บ2. Categoriesบ 
echo                                                        บ3. Search    บ
echo                                                        ศอออออออออออออผ
echo.
echo                                                        ษอออออออออออออป
echo                                                        บ  SETTINGS   บ
echo                                                        ฬอออออออออออออน
echo                                                        บ4. Browser   บ
echo                                                        บ5. Theme     บ
echo                                                        บ6. About     บ
echo                                                        ศอออออออออออออผ
choice /cs /c 123456D /n
if %errorlevel% == 1 goto home
if %errorlevel% == 2 goto categories
if %errorlevel% == 3 goto search
if %errorlevel% == 4 goto browser
if %errorlevel% == 5 goto theme
if %errorlevel% == 6 goto about
if %errorlevel% == 7 goto direct
goto menu
:home
%web% https://animetake.tv/
goto menu
:categories
title Animetake - Categories
%logo%
echo.
echo.
echo                                                        ษอออออออออออออป
echo                                                        บ CATEGORIES  บ
echo                                                        ฬอออออออออออออน
echo                                                        บ1. List      บ
echo                                                        บ2. Action    บ
echo                                                        บ3. Adventure บ
echo                                                        บ4. Comedy    บ
echo                                                        บ5. Drama     บ
echo                                                        บ6. Game      บ
echo                                                        บ7. Isekai    บ
echo                                                        บ8. Sci-Fi    บ
echo                                                        บ9. SuperPowerบ
echo                                                        ศอออออออออออออผ
choice /c 123456789 /n
if %errorlevel% == 1 (goto list1)
if %errorlevel% == 2 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Action)
if %errorlevel% == 3 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Adventure)
if %errorlevel% == 4 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Comedy)
if %errorlevel% == 5 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Drama)
if %errorlevel% == 6 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Game)
if %errorlevel% == 7 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Isekai)
if %errorlevel% == 8 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Sci-Fi)
if %errorlevel% == 9 (%web% https://animetake.tv/animelist/?genres%%5B%%5D=Super+Power)

goto menu
:search
title Animetake - Search
echo.
set /p "search=Search : "
%web% https://animetake.tv/search/?search=%search: =+%
goto menu
:browser
title Animetake - Browser
%logo%
echo.
echo.
echo                                                        ษออออออออออออป
echo                                                        บ  Browser   บ
echo                                                        ฬออออออออออออน
echo                                                        บ1. Explorer บ
echo                                                        บ2. Chrome   บ
echo                                                        บ3. Opera GX บ
echo                                                        ศออออออออออออผ
choice /c 123 /n
if %errorlevel% == 1 set "browser=iexplore"
if %errorlevel% == 2 set "browser=chrome"
if %errorlevel% == 3 set "browser=operagx"
call :editset
call :loadset
goto menu
:theme
title Animetake - Theme
%logo%
echo.
echo.
echo                                                      ษอออออออออออออออป
echo                                                      บ     Theme     บ
echo                                                      ฬอออออออออออออออน
echo                                                      บ220-Default    บ
echo                                                      บ214-Orange     บ
echo                                                      บ 99-Purple     บ
echo                                                      บ159-LightBlue  บ
echo                                                      บ 10-LightGreen บ
echo                                                      บ198-Pink       บ
echo                                                      บ210-Peach      บ
echo                                                      บ               บ
echo                                                      บ    (0-255)    บ
echo                                                      ศอออออออออออออออผ
echo.
echo.
set /p "logocolor=[0m                                                      Color : "
call :editset
call :loadset
goto logo
:about
title Animetake - About
%logo%
echo.
echo.
echo                                                        ษออออออออออออป
echo                                                        บ   ABOUT    บ
echo                                                        ศออออออออออออผ
echo.
echo                                                    File name : Animetake.bat
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
:direct
set /p "animename=Anime name : "
set /p "episodenum=Episode : "
%web% https://animetake.tv/watch-online/%animename: =-%-episode-%episode%/
goto menu
:list1
title Animetake - List
%logo%
echo.
echo.
echo                                                      ษออออออออออออออออออป
echo                                                      บ      Anime       บ
echo                                                      ฬออออออออออออออออออน
echo                                                      บ1. Black Clover   บ
echo                                                      บ2. One Punch Man  บ
echo                                                      บ3. SAO            บ
echo                                                      บ4. Hunter x Hunterบ
echo                                                      บ5. Jujutsu Kaisen บ
echo                                                      บ6. RE:Zero        บ
echo                                                      บ7. A Silent Voice บ
echo                                                      บ8. AOT            บ
echo                                                      บ9. Next page -^>   บ
echo                                                      ฬออออออออออออออออออน
echo                                                      บ       1/1        บ
echo                                                      ศออออออออออออออออออผ
echo.
choice /c 123456789 /n
if %errorlevel% == 1 (goto listbkcl)
if %errorlevel% == 2 (goto listopm)
if %errorlevel% == 3 (goto listsao)
if %errorlevel% == 4 (goto listhxh)
if %errorlevel% == 5 (goto listjjk)
if %errorlevel% == 6 (goto listrez)
if %errorlevel% == 7 (goto listasv)
if %errorlevel% == 8 (goto listaot)
if %errorlevel% == 9 (goto list1)
goto menu
:loadset
cd %public%\animetake
for /f "delims== tokens=1,2" %%G in (settings.txt) do set "%%G=%%H"
if %browser% == iexplore (set "web=start iexplore.exe")
if %browser% == chrome (set "web=start chrome.exe")
if %browser% == operagx (set "web=cd %LocalAppData%\Programs\Opera GX & start launcher.exe")
exit /b
:makeset
cd %public%\animetake
echo logocolor=220>settings.txt
echo browser=chrome>>settings.txt
exit /b
:editset
cd %public%\animetake
echo logocolor=%logocolor%>settings.txt
echo browser=%browser%>>settings.txt
exit /b
:vartype
set "var="&for /f "delims=0123456789" %%i in ("%1") do set var=%%i
if defined var (set vartype=text) else (set vartype=num)
exit /b
:listbkcl
title Animetake - List - Black Clover
%logo%
echo.
echo.
echo                                                      ษออออออออออออออออออป
echo                                                      บ   Black Clover   บ
echo                                                      ฬออออออออออออออออออน
echo                                                      บ1. Anime page     บ
echo                                                      บ2. Select episode บ
echo                                                      บ3. Back           บ
echo                                                      ศออออออออออออออออออผ
echo.
choice /c 123 /n
if %errorlevel% == 1 (%web% )
if %errorlevel% == 2 (goto :listbkclep)
if %errorlevel% == 3 (goto list1)
:listbkclep
echo.
set /p "episode=Episode : "
call :vartype %episode%
if %vartype% == text (goto :listbkclep)
%web% https://animetake.tv/watch-online/black-clover-episode-%episode%/
goto menu

::To do :
::
::[X] Settings -> save/load (browser/theme)
::[ ] List tab -> add more anime/make multiple pages working
::[ ] List under category -> create a menu for the choice of #episode
::[ ] Self update -> create file in %public% that overwrite %0 and start new version with -update to delete the file in %public% / create shortcut with animetake.ico