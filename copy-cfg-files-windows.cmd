@ECHO OFF
SETLOCAL ENABLEEXTENSIONS

SET cs2_install_path=%PROGRAMFILES(x86)%\Steam\steamapps\common\Counter-Strike Global Offensive

XCOPY %~dp0cfg\* "%cs2_install_path%\game\csgo\cfg" /Y /F

PAUSE
EXIT /B 0
