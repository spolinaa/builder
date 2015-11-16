@echo off

if "%RUN%"=="" goto :EOF

if %CHECK_OK%==false (
  set EMAILREPORT=Failed to find %MISSEDFILE%
) else (
  set EMAILREPORT=Project has successfully built
)

%MAILSEND% -to %RECEIVER% -from %SENDER% -ssl -port 465 -auth -smtp %SERVER% -sub "%EMAILREPORT%" +cc +bc -v -user %USER% -pass %PASSWORD% -attach %MSBUILDLOG% -M "%EMAILREPORT%" 
