@echo OFF
setlocal enabledelayedexpansion
set pathprefix=""
where "dosbox.exe"
if errorlevel 1 (
  set defaultpath="C:\Program Files\DOSBox-0.74"
  set defaultpath86="C:\Program Files (x86)\DOSBox-0.74"
  echo %PATH%
  if exist ""%defaultpath%"" (
    echo old 
    set pathprefix=%defaultpath%\
  )
  if exist ""%defaultpath86%"" (
    echo new
    set pathprefix=%defaultpath86%\
  )
  echo !pathprefix!
)
!pathprefix!dosbox -fullscreen -noconsole -exit -c "@echo OFF" -c "mount C: %CD%" -c "C:\Demo\Electron.exe" -c "exit"

