@echo off
Setlocal
Set myFlag=C:\batch\switch\switchmonitor.flg
if Exist "%myFlag%" (
    rem flag exists. Activate internal display. Then delete flag.
    DisplaySwitch.exe /clone
    del /q "%myFlag%"
) else (
    rem flag does not exist. Activate external display. Then create flag
    DisplaySwitch.exe /extend
    Echo I'm a flag for myScript.cmd>"%myFlag%"
)