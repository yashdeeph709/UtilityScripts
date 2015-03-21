@ECHO OFF
F:
cd minors
dir
set /p "pname=Enter Project Name -:"
sub %pname%
cd %pname%
set /p "db=Do you need CassandrDB-:"
if "%db%"=="y" (sc start datastax_cassandra_community_server)
start nodemon server.js
start chrome 127.0.0.1:3000
cd ..
cd boodoc
start nodemon server.js
start chrome 127.0.0.1:9000
ECHO Running Nodemon,chrome,bootstrap local(9001),Sublime text 3
ECHO wRITTen aND hACKed bY-:"vENGIcx"
rem make cassandra a service and start it and stop it as per need