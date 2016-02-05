@ECHO OFF
REM 0 - cygwin path
REM 1 - source code path
REM 2 - shell script name
REM 3 - shell script args
REM 4 - output file name
pushd .
set path=C:\cygwin\bin;%path%;
cd /D D:\Arun\Projects\CygwinSearch\RestAPI
bash.exe D:\Arun\Projects\CygwinSearch\CygwinSearch\bin\Debug\scripts\findInErrorMessages.sh   " "
popd