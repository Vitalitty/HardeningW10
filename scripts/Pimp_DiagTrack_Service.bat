:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: NAME:					Pimp_DiagTrack_Service.bat
:: VERSION:					1.0
:: AUTHOR:					Vitalitty
::
:: Modification history:	23.05.2019	1.0	Creation
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off

ver | find "10.0.1"
if %errorlevel% EQU 0 (
	net stop DiagTrack
	sc config DiagTrack start=disabled
)
