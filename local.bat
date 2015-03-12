@ECHO OFF

setlocal
D:
cd minors
dir
set /p "pname=Enter Project Name -:"
sub %pname%
cd %pname%
set /p "db=Do you need CassandrDB-:"
if "%db%"=="y" (sc start datastax_cassandra_community_server)
if EXIST server.js (call run)
:run
if "%~1"=="" (start nodemon server.js) else (start nodemon %~1)
dir 
dir
dir
dir
dir
dir
dir
dir
dir
cls
if "%~2"=="" (chrome 127.0.0.1:3000) else (chrome 127.0.0.1:%~2)
ECHO wRITTen aND hACKed bY-:"vENGIcx"
rem make cassandra a service and start it and stop it as per need