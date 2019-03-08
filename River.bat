@echo off
if not "%1"=="max" start /MAX cmd /c %0 max & exit/b
echo.
echo 											------------------------
echo.
echo 												Welcome!
echo.
echo 											------------------------
echo								This is a batch file that enables your file sharing, and opens "River's Public folder" enjoy!
echo.
echo Setting up file sharing.
echo.
pause
cls
echo.
echo 											------------------------
echo.
echo 												Welcome!
echo.
echo 											------------------------


echo.
    echo 									Administrative permissions required. Detecting permissions...
echo.
echo											     	    ---------------
echo.
    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo 									Success: Administrative permissions confirmed.&color 02
    ) else (
        (echo 									Please run as Administrator! Exiting now.)&color 04&pause&exit
    )
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall firewall set rule group="network discovery" new enable=yes
echo You're free to use file sharing now!
start \\RIVERSWORKPC
pause