@echo off

if "%RUN%"=="" goto :EOF

set EMAILREPORT=Failed to build the project

%MAILSEND% -to %RECEIVER% -from %SENDER% -ssl -port 465 -auth -smtp %SERVER% -sub "%EMAILREPORT%" +cc +bc -v -user %USER% -pass %PASSWORD% -attach %MSBUILDLOG% -M "%EMAILREPORT%" 
