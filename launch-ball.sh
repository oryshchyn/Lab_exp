#!/bin/sh
dosbox -fullscreen -noconsole -c '@echo OFF' -c "mount C: `dirname $0`" -c 'C:\Ball\Ball.exe' -c 'exit'

