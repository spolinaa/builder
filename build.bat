if "%RUN%"=="" goto :EOF

%MSBUILD% %SOLUTIONFILE%>%MSBUILDLOG%

if ERRORLEVEL 1 (
  set BUILD_OK=false
) else (
  set BUILD_OK=true
)
