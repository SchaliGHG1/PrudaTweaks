:: SET TSCSYNCPOLICY TO LEGACY

@echo off
setlocal ENABLEDELAYEDEXPANSION

:: CHECK FOR ADMIN PRIVILEGES
dism >nul 2>&1 || (echo This script must be Run as Administrator. && pause && exit /b 1)

:: FOR BETTER INPUT BUT WORSE FPS (YOUR EXPERIENCE MAY BE DIFFERENT)
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0
powercfg -setactive scheme_current

echo Procedimento Concluido. Por Favor Reinicie o seu computador.
pause

exit /b 0
