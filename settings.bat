if "%RUN%"=="" goto :EOF

set BUILDERFOLDER=%dp0

set DOTNETVER=4.0.30319
set SOLUTIONFILE=intersection\intersection.sln

set MSBUILDLOG=msbuild.log
set MSBUILD=%windir%\Microsoft.NET\Framework64\v%DOTNETVER%\MSBuild.exe

set GIT="C:\Program Files (x86)\Git\bin\git.exe"
set CLONELOG=gitclone.log
set REPOSITORY="https://github.com/spolinaa/intersection.git"

set FILES=files.txt
set DEBUGFOLDER=intersection\intersection\bin\Debug

set MAILSEND="C:\Users\Polina\Desktop\mailsend1.18.exe"
set SENDER=mailsend11@mail.ru
set RECEIVER=sokolova.polina@mail.ru
set SERVER=smtp.mail.ru
set USER=mailsend11
set PASSWORD=sendemail20


