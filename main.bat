@echo off

echo Builder has started
set RUN=true

call settings.bat
call clone.bat

if %CLONE_OK%==false (
  call clonefailed.bat
  goto :finish
)

call build.bat

if %BUILD_OK%==false (
  call buildfailed.bat
  goto :finish
)

call check.bat
call email.bat

:finish
echo Builder has finished
Pause

