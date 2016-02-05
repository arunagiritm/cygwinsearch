@ECHO OFF
REM 0 - cygwin path
REM 1 - source code path
REM 2 - shell script name
REM 3 - shell script args
REM 4 - output file name
pushd .
set path={0};%path%;
cd /D {1}
bash.exe {2} {3}
popd