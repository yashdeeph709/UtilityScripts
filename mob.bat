@echo off 
call :CASE_%~1

:CASE_lumia
set device="nokia_lumia_920_emulator"
  GOTO END_CASE
:CASE_iphone
set device="iphone_5_emulator"
  GOTO END_CASE
:CASE_htc
set %device%="htc_one_emulator"
  GOTO END_CASE
:CASE_galaxy
set %device%="samsung_galaxy_y_emulator"
  GOTO END_CASE
:CASE_nexus
set %device%="google_nexus_7_emulator"
  GOTO END_CASE
:END_CASE
chrome http://mobiletest.me/%device%/#u=%~2
GOTO :EOF
