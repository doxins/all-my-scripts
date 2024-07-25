:: created by vroxibladi

@echo off
mode con: cols=85 lines=15
bypass Loading...

:Disclaimer
title TAKE NOTE !!!!
color 0D
echo.                              
echo                                  Step by step tutorial in discord
echo                                       Made by: @doxins
echo.
echo                             Type "bypass" to continue...
echo.

set /p agree=: 
if /i "%agree%" neq "bypass" (
  echo You must agree to continue.
  goto input
)
echo Continuing...

:LoadingTitle
title Vroxibladi pc check bypass loading...
mode con: cols=83 lines=35
cls
color 0D
echo.                                                                                                      
echo Yb    dP 88""Yb  dP"Yb  Yb  dP 88     88""Yb 88        db    8888b.  88 
echo  Yb  dP  88__dP dP   Yb  YbdP  88     88__dP 88       dPYb    8I  Yb 88 
echo   YbdP   88"Yb  Yb   dP  dPYb  88     88""Yb 88  .o  dP__Yb   8I  dY 88 
echo    YP    88  Yb  YbodP  dP  Yb 88     88oodP 88ood8 dP""""Yb 8888Y"  88                                                              
echo.            
echo ----------------------------------------------------------------------------------
echo.
echo                                Loading vroxibladi bypass
PING localhost -n 3 >NUL

:: Auto-updating coming soon

PING localhost -n 3 >NUL
echo                       Checking administrative privileges

:Title
cls
color 0D
echo.                                                                                                      
echo Yb    dP 88""Yb  dP"Yb  Yb  dP 88     88""Yb 88        db    8888b.  88 
echo  Yb  dP  88__dP dP   Yb  YbdP  88     88__dP 88       dPYb    8I  Yb 88 
echo   YbdP   88"Yb  Yb   dP  dPYb  88     88""Yb 88  .o  dP__Yb   8I  dY 88 
echo    YP    88  Yb  YbodP  dP  Yb 88     88oodP 88ood8 dP""""Yb 8888Y"  88                                                              
echo.            
echo                               [1] Start Bypass
echo                                 [2] Close App
echo.
echo ----------------------------------------------------------------------------------
echo.

set /p choice=Option:
if '%choice%'=='1' goto start
if '%choice%'=='2' goto close
goto :eof

:start
cls
echo Starting Cleaner...
goto :code
pause

:close
echo Closing...
exit

:code
cls
color 0D
echo.                                                                                                      
echo Yb    dP 88""Yb  dP"Yb  Yb  dP 88     88""Yb 88        db    8888b.  88 
echo  Yb  dP  88__dP dP   Yb  YbdP  88     88__dP 88       dPYb    8I  Yb 88 
echo   YbdP   88"Yb  Yb   dP  dPYb  88     88""Yb 88  .o  dP__Yb   8I  dY 88 
echo    YP    88  Yb  YbodP  dP  Yb 88     88oodP 88ood8 dP""""Yb 8888Y"  88                                                              
echo.            
echo ----------------------------------------------------------------------------------
echo.
echo                          [1] Clean all Registory Traces
echo                          [2] Delete Temp Files
echo                          [3] Delete Recent File Traces
echo                          [4] Delete Event Log Traces
echo                          [5] Delete Process Hacker Strings
echo                          [6] Close
echo.

set /p choice=Option:
if '%choice%'=='1' goto RegistryKeys
if '%choice%'=='2' goto TempFiles
if '%choice%'=='3' goto RecentFiles
if '%choice%'=='4' goto EventLog
if '%choice%'=='5' goto ProcessHacker
if '%choice%'=='6' goto close
goto :eof

:RegistryKeys
cls
echo Clearing Registry Keys
Title Clearing Registry Keys...

reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUICache" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
echo.
pause
goto code

:TempFiles
cls

echo Cleaning Temp Files
Title Cleaning Temp Files...

rmdir /s /q "C:\Users\%username%\AppData\Local\Temp"
echo.
pause
goto code

:RecentFiles
cls

echo Cleaning Recent Files
Title Cleaning Recent Files...

@RD /S /Q "C:\Windows\Prefetch\"
echo Cleared Windows Prefetch.
@RD /S /Q "C:\Users\Default\AppData\Roaming\Microsoft\Windows\Recent\"
echo Cleared Windows Recent Data.
@RD /S /Q "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\"
echo.
pause
goto code
cls

:EventLog
cls

echo Deleting Event Log Entries
Title Deleting Event Log Entries...

FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
pause
goto code

:ProcessHacker
@echo off
start C:\Windows\SystemApps\Shared\shared_store_ct.dat
pause
goto code

:do_clear
echo Cleaning %1
wevtutil.exe cl %1