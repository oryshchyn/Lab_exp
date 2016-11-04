#!/bin/sh
dosbox -fullscreen -noconsole -c '@echo OFF' -c "mount C: `dirname $0`" -c 'C:\Demo\Electron.exe' -c 'exit'

