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
echo                                                        �������������ͻ
echo                                                        �1. Home      �
echo                                                        �2. Categories� 
echo                                                        �3. Search    �
echo                                                        �������������ͼ
echo.
echo                                                        �������������ͻ
echo                                                        �  SETTINGS   �
echo                                                        �������������͹
echo                                                        �4. Browser   �
echo                                                        �5. Theme     �
echo                                                        �6. About     �
echo                                                        �������������ͼ
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
echo                                                        �������������ͻ
echo                                                        � CATEGORIES  �
echo                                                        �������������͹
echo                                                        �1. List      �
echo                                                        �2. Action    �
echo                                                        �3. Adventure �
echo                                                        �4. Comedy    �
echo                                                        �5. Drama     �
echo                                                        �6. Game      �
echo                                                        �7. Isekai    �
echo                                                        �8. Sci-Fi    �
echo                                                        �9. SuperPower�
echo                                                        �������������ͼ
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
echo                                                        ������������ͻ
echo                                                        �  Browser   �
echo                                                        ������������͹
echo                                                        �1. Explorer �
echo                                                        �2. Chrome   �
echo                                                        �3. Opera GX �
echo                                                        ������������ͼ
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
echo                                                      ���������������ͻ
echo                                                      �     Theme     �
echo                                                      ���������������͹
echo                                                      �220-Default    �
echo                                                      �214-Orange     �
echo                                                      � 99-Purple     �
echo                                                      �159-LightBlue  �
echo                                                      � 10-LightGreen �
echo                                                      �198-Pink       �
echo                                                      �210-Peach      �
echo                                                      �               �
echo                                                      �    (0-255)    �
echo                                                      ���������������ͼ
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
echo                                                        ������������ͻ
echo                                                        �   ABOUT    �
echo                                                        ������������ͼ
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
echo                                                      ������������������ͻ
echo                                                      �      Anime       �
echo                                                      ������������������͹
echo                                                      �1. Black Clover   �
echo                                                      �2. One Punch Man  �
echo                                                      �3. SAO            �
echo                                                      �4. Hunter x Hunter�
echo                                                      �5. Jujutsu Kaisen �
echo                                                      �6. RE:Zero        �
echo                                                      �7. A Silent Voice �
echo                                                      �8. AOT            �
echo                                                      �9. Next page -^>   �
echo                                                      ������������������ͼ
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