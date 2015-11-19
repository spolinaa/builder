if "%RUN%"=="" goto :EOF

if exist intersection (
  if not intersection=="" (
    rmdir /s /q intersection
  )
)

%GIT% clone %REPOSITORY%>nul 2>%CLONELOG%

if ERRORLEVEL 1 (
  set CLONE_OK=false
) else (
  set CLONE_OK=true
)

