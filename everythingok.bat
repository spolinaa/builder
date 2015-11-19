if "%RUN%"=="" goto :EOF

set EMAILREPORT=Project has successfully built

%MAILSEND% -to %RECEIVER% -from %SENDER% -ssl -port 465 -auth -smtp %SERVER% -sub "%EMAILREPORT%" +cc +bc -v -user %USER% -pass %PASSWORD% -M "%EMAILREPORT%" 
