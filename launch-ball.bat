@echo OFF
dosbox -fullscreen -noconsole -exit -c "@echo OFF" -c "mount C: %CD%" -c "C:\Ball\Ball.exe" -c "exit"

