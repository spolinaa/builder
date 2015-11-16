if "%RUN%"=="" goto :EOF

FOR /F "tokens=*" %%i in (%FILES%) do ( 
  if not exist "%DEBUGFOLDER%\%%i" (
    set CHECK_OK=false
    set MISSEDFILE="%%i"
    goto :EOF
  ) else (
    set CHECK_OK=true
  )
)
