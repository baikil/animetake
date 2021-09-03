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
%web% https://animetake.tv/
goto menu
:categories
title Animetake - Categories
%logo%
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
echo                                                        ������������ͻ
echo                                                        �  Browser   �
echo                                                        ������������͹
echo                                                        �1. Explorer �
echo                                                        �2. Chrome   �
echo                                                        �3. Opera GX �
echo                                                        ������������ͼ
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
call :editset
call :loadset
goto logo
:about
title Animetake - About
%logo%
echo.
echo.
echo                                                        ������������ͻ
echo                                                        �   ABOUT    �
echo                                                        ������������ͼ
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
echo                                                      ������������������͹
echo                                                      �       1/1        �
echo                                                      ������������������ͼ
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
echo                                                      ������������������ͻ
echo                                                      �   Black Clover   �
echo                                                      ������������������͹
echo                                                      �1. Anime page     �
echo                                                      �2. Select episode �
echo                                                      �3. Back           �
echo                                                      ������������������ͼ
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