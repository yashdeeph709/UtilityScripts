@ECHO OFF
F:
dir
set /p "pname=Enter Project Name -:"
subl %pname%
cd %pname%
start nodemon server.js
start chrome 127.0.0.1:3000
cd ..
cd boodoc
start nodemon server.js
start chrome 127.0.0.1:9000
ECHO wRITTen aND hACKed bY-:"vENGIcx"
ECHO Running Nodemon,chrome,bootstrap local(9001),Sublime text 3
rem make cassandra a service and start it and stop it as per need