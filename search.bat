@echo off
setlocal
set a="http://www.google.com/search?query="
if %~1==plunkr
a="plunkr.co/edit"

start chrome.exe a%~1
