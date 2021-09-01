::Edit with OEM encoding
:reset
@echo off
set logocolor=220
set "browser=cd %LocalAppData%\Programs\Opera GX & start launcher.exe"
:logo
title Animetake - Logo
set "logo1=echo                                           ___          _                [38;5;%logocolor%m__        __         [0m"
set "logo2=echo                                          /   ^|  ____  (_)___ ___  ___  [38;5;%logocolor%m/ /_____ _/ /_____   [0m"
set "logo3=echo                                         / /^| ^| / __ \/ / __ `__ \/ _ \[38;5;%logocolor%m/ __/ __ `/ //_/ _ \ [0m"
set "logo4=echo                                        / ___ ^|/ / / / / / / / / /  __/[38;5;%logocolor%m /_/ /_/ / ,^< /  __/ [0m"
set "logo5=echo                                       /_/  ^|_/_/ /_/_/_/ /_/ /_/\___/[38;5;%logocolor%m\__/\__,_/_/^|_^|\___/ [0m"
:menu
MODE 130, 24
title Animetake - Menu
cls
%logo1%
%logo2%
%logo3%
%logo4%
%logo5%
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
%browser% https://animetake.tv/
goto menu
:categories
title Animetake - Categories
cls
%logo1%
%logo2%
%logo3%
%logo4%
%logo5%
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
if %errorlevel% == 2 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Action)
if %errorlevel% == 3 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Adventure)
if %errorlevel% == 4 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Comedy)
if %errorlevel% == 5 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Drama)
if %errorlevel% == 6 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Game)
if %errorlevel% == 7 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Isekai)
if %errorlevel% == 8 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Sci-Fi)
if %errorlevel% == 9 (%browser% https://animetake.tv/animelist/?genres%%5B%%5D=Super+Power)

goto menu
:search
title Animetake - Search
echo.
set /p "search=Search : "
%browser% https://animetake.tv/search/?search=%search: =+%
goto menu
:browser
title Animetake - Browser
cls
%logo1%
%logo2%
%logo3%
%logo4%
%logo5%
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
if %errorlevel% == 1 set "browser=start iexplore.exe"
if %errorlevel% == 2 set "browser=start chrome.exe"
if %errorlevel% == 3 set "browser=cd %LocalAppData%\Programs\Opera GX & start launcher.exe"
goto menu
:theme
title Animetake - Theme
cls
%logo1%
%logo2%
%logo3%
%logo4%
%logo5%
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
goto logo
:about
title Animetake - About
cls
%logo1%
%logo2%
%logo3%
%logo4%
%logo5%
echo.
echo.
echo                                                        ษออออออออออออป
echo                                                        บ   ABOUT    บ
echo                                                        ศออออออออออออผ
echo.
echo                                                    File name : Animetake.bat
echo                                                      Version : 1.3
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
set /p "anime=[anime name] episode [#] : "
%browser% https://animetake.tv/watch-online/%anime: =-%/
goto menu
:list1
title Animetake - List
cls
%logo1%
%logo2%
%logo3%
%logo4%
%logo5%
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
echo                                                      ศออออออออออออออออออผ
echo.
echo *Work in progress*
pause
goto menu

::To do :
::
::[ ] Settings -> save/load (browser/theme)
::[ ] List tab -> add more anime/make multiple pages working
::[ ] List under category -> create a menu for the choice of #episode
::[ ] Self update -> create file in %public% that overwrite %0 and start new version with -update to delete the file in %public% / create shortcut with animetake.ico